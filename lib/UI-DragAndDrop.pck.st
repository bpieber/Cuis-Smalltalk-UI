'From Cuis7.1 [latest update: #6722] on 14 September 2024 at 4:31:57 pm'!
'Description '!
!provides: 'UI-DragAndDrop' 1 4!
!requires: 'Cuis-Base' 71 6722 nil!
!requires: 'UI-Core' 1 18 nil!
SystemOrganization addCategory: #'UI-DragAndDrop'!


!classDefinition: #ClickColorMorph category: #'UI-DragAndDrop'!
ImageMorph subclass: #ClickColorMorph
	instanceVariableNames: 'colorTargetMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-DragAndDrop'!
!classDefinition: 'ClickColorMorph class' category: #'UI-DragAndDrop'!
ClickColorMorph class
	instanceVariableNames: ''!

!classDefinition: #DropColorMorph category: #'UI-DragAndDrop'!
ImageMorph subclass: #DropColorMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-DragAndDrop'!
!classDefinition: 'DropColorMorph class' category: #'UI-DragAndDrop'!
DropColorMorph class
	instanceVariableNames: ''!

!classDefinition: #FontMorph category: #'UI-DragAndDrop'!
BorderedBoxMorph subclass: #FontMorph
	instanceVariableNames: 'labelMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-DragAndDrop'!
!classDefinition: 'FontMorph class' category: #'UI-DragAndDrop'!
FontMorph class
	instanceVariableNames: ''!


!ClickColorMorph commentStamp: '<historical>' prior: 0!
I am clicked upon to set my colorTargetMorph to my color.

I am used to select/set a color, not to be dragged.  Note DropColorMorph.!

!DropColorMorph commentStamp: '<historical>' prior: 0!
I am picked up to be dropped on another morph.

I change that morph's color to my color.

See method #dropAction:

Note: To click-select a color, see ClickColorMorph!

!FontMorph commentStamp: '<historical>' prior: 0!
My instances display 'AbBbCc $123' using my specified font an emphysis.

I am used to display a font, e.g. in a FontPallet.


(FontMorph font: FontFamily defaultFamilyAndPointSize) openInHand.

ImagePallet systemFonts.!

!ClickColorMorph methodsFor: 'closing' stamp: 'KenD 2/29/2020 13:43:18'!
closeContainingPanel: nextOwner
	"After user selection, I need to close my containing Panel; chain up to find it"

	(nextOwner is: #Panel) 
		ifTrue: [ nextOwner closeButtonClicked ] 
		ifFalse: [
			nextOwner 
				ifNil: [ ^self ] 
				ifNotNil: [ self closeContainingPanel: nextOwner owner]
		]! !

!ClickColorMorph methodsFor: 'initialization' stamp: 'KenD 2/29/2020 09:17:41'!
fromColor: aColor forTarget: aMorph

	colorTargetMorph := aMorph. "immutable"
	self 
		color: aColor;
		image: (self color icon magnifyTo: 32@32)
	! !

!ClickColorMorph methodsFor: 'event handling testing' stamp: 'KenD 2/29/2020 09:22:26'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"
	^true! !

!ClickColorMorph methodsFor: 'event handling' stamp: 'KenD 9/28/2021 08:44:22'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	| colorSetters choices |

	(self coversPixel: aMouseButtonEvent eventPosition)
		ifFalse: [ ^self ]. "Stay up"
			
	colorSetters := (((colorTargetMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorTargetMorph class == Morph) 
		ifTrue: [
			PopUpMenu inform: 'My color attribute cannot be set ', self printString 
			^ self
		].
		
	(colorSetters size = 1)
		ifTrue: [ colorTargetMorph targetMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				colorTargetMorph 
						perform: (colorSetters at: selection - 1) 
						with: self color;
						triggerEvent: #propertyChanged.
			]
		].

	colorTargetMorph redrawNeeded.
	self closeContainingPanel: self owner.
! !

!ClickColorMorph class methodsFor: 'instance creation' stamp: 'KenD 7/24/2024 12:34:42'!
fromColor: aColor forTarget: aMorph
"
	(DropColorMorph fromColor: Color green) openInHand.
"

	^ self new fromColor: aColor forTarget: aMorph! !

!ClickColorMorph class methodsFor: 'new-morph participation' stamp: 'KenD 2/29/2020 12:58:24'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 20:07'!
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^ self class fromColor: self color "Grab a new sibling of me"! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 20:15'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ self class fromColor: aMorph color   "Pick up a copy of me"! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/23/2016 14:40:29'!
dropAction: aDropTargetMorph
	"Set a color"

	| colorSetters choices |
	colorSetters := (((aDropTargetMorph targetMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorSetters size = 1)
		ifTrue: [ aDropTargetMorph targetMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			self delete. "Remove me from hand so user can choose"
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				aDropTargetMorph targetMorph 
						perform: (colorSetters at: selection - 1) 
						with: self color;
						triggerEvent: #propertyChanged.
			]
		].

	aDropTargetMorph refreshSubmorphs.! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 3/4/2022 13:42:58'!
processDropMorph: aDropEvent
	"I have already expressed a desire for the drop. Just do it."
	
	| dropedMorph dropAction |
	dropedMorph := aDropEvent contents.
	dropAction := self valueOfProperty: #dropAction ifAbsent: [ nil ]. 
	aDropEvent wasHandled: (dropAction notNil).
	dropAction ifNotNil: [ :doIt |
		doIt value: dropedMorph value:  dropedMorph valueWhenDropped.
	 ]
! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 3/3/2022 12:58:08'!
rejectDropMorphEvent: evt
	"Rejected drop of me.  Remove me from the hand."
	
	self showReject; hide; delete.
	self world ifNotNil: [ :w | w activeHand removeMorph: self ]
! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/6/2016 18:55:26'!
valueWhenDropped

	^ self color! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 3/3/2022 12:30:30'!
wantsToBeDroppedInto: aMorph
	"Who do I wish to be dropped onto?"

	((Smalltalk includesKey: #MorphEditLens) "May not be present"
	 and: [aMorph isKindOf: (Smalltalk at: #MorphEditLens)])
		ifTrue: [ ^true ].
		
	(aMorph hasProperty: #dropAction)
		ifTrue: [ ^true ].
		
	((Smalltalk includesKey: #VisualPropertyMenuItem)
	 and: [ aMorph isKindOf: (Smalltalk at: #VisualPropertyMenuItem) ])
		ifTrue: [ ^true ].
				
	^ false ! !

!DropColorMorph methodsFor: 'initialization' stamp: 'KenD 12/24/2013 17:03'!
fromColor: aColor

	self 
		color: aColor;
		image: (self color icon magnifyTo: 32@32)
	! !

!DropColorMorph methodsFor: 'initialization' stamp: 'KenD 5/17/2024 11:20:08'!
initialize

	super initialize.
	self 
		image: (Color blue icon magnifyTo: 32@32);
		color: Color transparent;
		setProperty: #DropActionMorph toValue: #setColor: ;
		borderWidth: 4;
		borderColor: self class swatchBorderColor ! !

!DropColorMorph class methodsFor: 'accessing' stamp: 'KenD 3/11/2022 15:27:33'!
swatchBorderColor
	"Match with Visual Menu Item text color"
	
	^ (Color r: 0.5 g: 0.07 b: 0.5) ! !

!DropColorMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!DropColorMorph class methodsFor: 'instance creation' stamp: 'KenD 7/24/2024 12:34:30'!
fromColor: aColor
"
	(DropColorMorph fromColor: Color green) openInHand.
"

	^ self new fromColor: aColor ! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:53:07'!
emphasis

	^ self labelMorph emphasis ! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:53:02'!
emphasis: emphasisCode

	^ self labelMorph emphasis: emphasisCode ! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:52:57'!
font

	^ self labelMorph font! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:52:52'!
font: aFont

	self labelMorph font: aFont.
	self adjustExtent! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:56:44'!
label

	^ self labelMorph contents! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:26:47'!
labelMorph

	^ labelMorph! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 5/11/2019 13:33:39'!
minimumExtent

	^ (2 * self borderWidth) + self labelMorph minimumExtent + 18! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 09:59:09'!
morphExtent: aPoint 
	"Set the receiver's extent to value provided. Honor my minimumExtent."

	super morphExtent: (aPoint max: self minimumExtent)! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:56:09'!
string

	^ self labelMorph contents! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:56:17'!
string: aString

	self labelMorph contents: aString.
	self adjustExtent ! !

!FontMorph methodsFor: 'geometry' stamp: 'KenD 9/2/2024 19:46:02'!
adjustExtent 
	"Some aspect of my font has changed. Don't shrink beyond minimum"

	self morphExtent: (self extentInOwner min: self minimumExtent)! !

!FontMorph methodsFor: 'geometry' stamp: 'KenD 9/14/2024 15:28:02'!
labelMorphOffset
	"LabelMorph is offset by combinedBorder"
	
	^(2 * self interiorOrigin) + (self font pointSize / 2)! !

!FontMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 2/9/2022 06:50:39'!
dropAction: aDropTargetMorph
	"Find accepting MetaProperties of target morph
	 and allow user to choose action."
	
	| metaPropsForMyValue myValue choices selection |
	(Smalltalk includesKey: #MetaProperty) ifFalse: [^nil ].
	
	myValue := self valueWhenDropped.
	metaPropsForMyValue := 
		(MetaProperty metaPropsForMorph:  
				aDropTargetMorph targetMorph)
			select: [ :metaProp | metaProp accepts: myValue ]. 
	(metaPropsForMyValue size isZero) ifTrue: [^nil ].
	
	choices := OrderedCollection with: #Cancel.
	choices addAll: (metaPropsForMyValue keys).
	
	"I am being carried by the hand.  Disappear and let user make a choice."
	self delete.
	selection := PopUpMenu withCaption: 'Choose setter' 
						chooseFrom: choices.
	(selection = 1) ifFalse: [ "1 -> Cancel" | propName setterSym |
		propName := choices at: selection.
		setterSym := (propName , ':') asSymbol.
		aDropTargetMorph targetMorph 
			perform: setterSym
			with: myValue ;
			triggerEvent: #propertyChanged.
	].! !

!FontMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 3/3/2022 12:57:37'!
rejectDropMorphEvent: dropEvent
	"The receiver has been rejected.  Disappear"

	self showReject; hide; delete.
	self world ifNotNil: [ :w | w activeHand removeMorph: self ].
! !

!FontMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/6/2016 18:56:31'!
valueWhenDropped

	^ self font! !

!FontMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 3/3/2022 12:30:39'!
wantsToBeDroppedInto: aMorph
	"Who do I wish to be dropped onto?"

	((Smalltalk includesKey: #MorphEditLens) "May not be present"
	 and: [aMorph isKindOf: (Smalltalk at: #MorphEditLens)])
		ifTrue: [ ^true ].
		
	(aMorph hasProperty: #dropAction)
		ifTrue: [ ^true ].
		
	((Smalltalk includesKey: #VisualPropertyMenuItem)
	 and: [ aMorph isKindOf: (Smalltalk at: #VisualPropertyMenuItem) ])
		ifTrue: [ ^true ].
				
	^ false! !

!FontMorph methodsFor: 'initialization' stamp: 'KenD 11/29/2016 09:54:03'!
defaultColor
	^ super defaultColor muchLighter ! !

!FontMorph methodsFor: 'initialization' stamp: 'KenD 3/11/2022 15:32:19'!
font: aFont emphasis: emphasisCode

	self 
		font: aFont emphasis: emphasisCode string: self class defaultString;
		borderWidth: 4;
		borderColor: DropColorMorph swatchBorderColor ! !

!FontMorph methodsFor: 'initialization' stamp: 'KenD 3/11/2022 15:33:04'!
font: aFont emphasis: emphasisCode string: aString
	"I am a UI Morph showing a LabelMorph.
	Make it so."
	
	labelMorph := LabelMorph new
				initWithContents: aString 
				font: aFont 
				emphasis: emphasisCode.
	self 
		morphExtent: self minimumExtent;
		addMorph: labelMorph;
		borderWidth: 4;
		borderColor: DropColorMorph swatchBorderColor.
		
	labelMorph morphPosition: self labelMorphOffset.! !

!FontMorph class methodsFor: 'instance creation' stamp: 'KenD 11/29/2016 10:08:53'!
font: aFont

	^ self new font: aFont emphasis: self defaultEmphasis string: self defaultString! !

!FontMorph class methodsFor: 'instance creation' stamp: 'KenD 11/29/2016 10:08:56'!
font: aFont emphasis: emphasisCode

	^ self new font: aFont emphasis: emphasisCode string: self defaultString ! !

!FontMorph class methodsFor: 'instance creation' stamp: 'KenD 11/29/2016 09:21:59'!
font: aFont emphasis: emphasisCode string: aString

	^ self new font: aFont emphasis: emphasisCode string: aString! !

!FontMorph class methodsFor: 'defaults' stamp: 'KenD 11/29/2016 09:25:45'!
defaultEmphasis
	"Answer the emphasis code  to display in the typical case"

	^  AbstractFont normalCode! !

!FontMorph class methodsFor: 'defaults' stamp: 'KenD 11/29/2016 10:08:34'!
defaultString
	"Answer a string to display in the typical case"

	^  'AbBbCc $123'! !

!FontMorph class methodsFor: 'defaults' stamp: 'jmv 6/11/2020 16:48:44'!
initializedInstance

	^ self font: FontFamily defaultFamilyAndPointSize! !

!FontMorph class methodsFor: 'examples' stamp: 'KenD 1/1/2022 08:06:28'!
example1
" 
	FontMorph example1 openInWorld
"
	^ FontMorph font: FontFamily defaultFamilyAndPointSize
! !

!FontMorph class methodsFor: 'examples' stamp: 'KenD 1/1/2022 08:07:20'!
example2
"
	FontMorph example2 openInWorld 
"
	^ FontMorph 
		font: FontFamily defaultFamilyAndPointSize 
		emphasis: 
			   AbstractFont boldCode 
			+ AbstractFont italicCode 
			+ AbstractFont underlinedCode 
		string: 'Bold, Italic and Underline'
! !

!FontMorph class methodsFor: 'new-morph participation' stamp: 'KenD 3/14/2022 14:56:21'!
categoryInNewMorphMenu

	^ 'User Interface'! !
