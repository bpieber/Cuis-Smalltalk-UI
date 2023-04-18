'From Cuis 6.0 [latest update: #5733] on 16 April 2023 at 5:54:27 pm'!
'Description '!
!provides: 'UI-Morphic-Mold' 1 8!
!requires: 'UI-Entry' 1 37 nil!
SystemOrganization addCategory: #'UI-Morphic-Mold'!


!classDefinition: #DateFieldTest category: #'UI-Morphic-Mold'!
TestCase subclass: #DateFieldTest
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'DateFieldTest class' category: #'UI-Morphic-Mold'!
DateFieldTest class
	instanceVariableNames: ''!

!classDefinition: #FieldTest category: #'UI-Morphic-Mold'!
TestCase subclass: #FieldTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'FieldTest class' category: #'UI-Morphic-Mold'!
FieldTest class
	instanceVariableNames: ''!

!classDefinition: #FloatFieldTest category: #'UI-Morphic-Mold'!
TestCase subclass: #FloatFieldTest
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'FloatFieldTest class' category: #'UI-Morphic-Mold'!
FloatFieldTest class
	instanceVariableNames: ''!

!classDefinition: #IntegerFieldTest category: #'UI-Morphic-Mold'!
TestCase subclass: #IntegerFieldTest
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'IntegerFieldTest class' category: #'UI-Morphic-Mold'!
IntegerFieldTest class
	instanceVariableNames: ''!

!classDefinition: #PercentageFieldTest category: #'UI-Morphic-Mold'!
TestCase subclass: #PercentageFieldTest
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'PercentageFieldTest class' category: #'UI-Morphic-Mold'!
PercentageFieldTest class
	instanceVariableNames: ''!

!classDefinition: #Field category: #'UI-Morphic-Mold'!
Object subclass: #Field
	instanceVariableNames: 'key isRequired conditions errors label value callback modifyBlock input widget'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'Field class' category: #'UI-Morphic-Mold'!
Field class
	instanceVariableNames: ''!

!classDefinition: #CheckboxField category: #'UI-Morphic-Mold'!
Field subclass: #CheckboxField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'CheckboxField class' category: #'UI-Morphic-Mold'!
CheckboxField class
	instanceVariableNames: ''!

!classDefinition: #DateField category: #'UI-Morphic-Mold'!
Field subclass: #DateField
	instanceVariableNames: 'format'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'DateField class' category: #'UI-Morphic-Mold'!
DateField class
	instanceVariableNames: ''!

!classDefinition: #FloatField category: #'UI-Morphic-Mold'!
Field subclass: #FloatField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'FloatField class' category: #'UI-Morphic-Mold'!
FloatField class
	instanceVariableNames: ''!

!classDefinition: #PercentageField category: #'UI-Morphic-Mold'!
FloatField subclass: #PercentageField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'PercentageField class' category: #'UI-Morphic-Mold'!
PercentageField class
	instanceVariableNames: ''!

!classDefinition: #IntegerField category: #'UI-Morphic-Mold'!
Field subclass: #IntegerField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'IntegerField class' category: #'UI-Morphic-Mold'!
IntegerField class
	instanceVariableNames: ''!

!classDefinition: #SelectField category: #'UI-Morphic-Mold'!
Field subclass: #SelectField
	instanceVariableNames: 'list labels onChange optionalLabel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'SelectField class' category: #'UI-Morphic-Mold'!
SelectField class
	instanceVariableNames: ''!

!classDefinition: #StringField category: #'UI-Morphic-Mold'!
Field subclass: #StringField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'StringField class' category: #'UI-Morphic-Mold'!
StringField class
	instanceVariableNames: ''!

!classDefinition: #PasswordField category: #'UI-Morphic-Mold'!
StringField subclass: #PasswordField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'PasswordField class' category: #'UI-Morphic-Mold'!
PasswordField class
	instanceVariableNames: ''!

!classDefinition: #TextField category: #'UI-Morphic-Mold'!
StringField subclass: #TextField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'TextField class' category: #'UI-Morphic-Mold'!
TextField class
	instanceVariableNames: ''!

!classDefinition: #TimeField category: #'UI-Morphic-Mold'!
Field subclass: #TimeField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'TimeField class' category: #'UI-Morphic-Mold'!
TimeField class
	instanceVariableNames: ''!

!classDefinition: #Mold category: #'UI-Morphic-Mold'!
Object subclass: #Mold
	instanceVariableNames: 'fields'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'Mold class' category: #'UI-Morphic-Mold'!
Mold class
	instanceVariableNames: ''!

!classDefinition: #MoldExample category: #'UI-Morphic-Mold'!
ProtoObject subclass: #MoldExample
	instanceVariableNames: 'mold format'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Morphic-Mold'!
!classDefinition: 'MoldExample class' category: #'UI-Morphic-Mold'!
MoldExample class
	instanceVariableNames: ''!


!Field commentStamp: 'hlsf 4/16/2023 11:54:38' prior: 0!
A field is a basic unit of Form I/O. It render a composite widget with the input morph, the example morph, and the errors morphs. It validates input from the user, and generates a bona-fide object of the appropriate type.

A default requirement condition always exist. Set to false by default, it can be toggled at run time.

Widget is packed as follow:

+----------------------------+
| LayoutMorph Row                                                |
|+-------------+--------------+
| LayoutMorph column   |   LayoutMorph column   |
| +---------+       |   +--------+          |
| | Input Morph      |        |   | Error 1 Morph |          |
| +---------+       |   +--------+          |
|  | ExampleMorph |       |    | Error 2 Morph |          |
| +---------+       |   +--------+          |
|                                     |   |          ../..         |          |
|                                     |   +--------+          |
+-------------+--------------+!

!Mold commentStamp: '<historical>' prior: 0!
This class is little more than a composite of Fields, where Fields do most of the work. 
To use a Mold, you typically create and store it in an instance variable of your Morph component. 

 | mold |
	mold := Mold new.
	(mold stringField)
		label: 'My label';
		on: #propertyValue of: ValueHolder new;
		example: 'This is an example';
		customize: [:widget :input :example | 
			widget color: Color black.
			input color: Color blue; backgroundColor: Color cyan.
			example color: Color white];
		addCondition: [:input| input size >= 4] 
		labeled: [:input | 'You  only key in ', input size asString, ' character(s), a minimum of 4 is required.'];
		beRequired.
	mold renderForms openInWorld.
	mold fields first inspect

!

!DateFieldTest methodsFor: 'running' stamp: 'KenTreis 8/9/2010 18:50'!
setUp
	field := DateField new! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/9/2010 22:37'!
testDefaultFormat
	self assert: field formatString = 'MM/DD/YYYY'! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/25/2010 10:05'!
testDisinfectISO
	field formatString: 'YYYY-MM-DD'.
	self assert: (field disinfect: '2010-08-06') = (Date year: 2010 month: 8 day: 6).
	self assert: (field disinfect: '1234-11-22') = (Date year: 1234 month: 11 day: 22).
	self assert: (field disinfect: '2009-1-14') = (Date year: 2009 month: 1 day: 14).
	self assert: (field disinfect: '2009-10-2') = (Date year: 2009 month: 10 day: 2).
	self shouldnt: [ field disinfect: '1234-11-32' ] raise: Error.	"invalid, but some implementations just jump to the next month"
	self assert: (field disinfect: '1-1') isNil.
	self assert: (field disinfect: 'blah') isNil! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/25/2010 10:05'!
testDisinfectUK
	field formatString: 'DD/MM/YYYY'.
	self assert: (field disinfect: '09/08/2010') = (Date year: 2010 month: 8 day: 9).
	self shouldnt: [ field disinfect: '09/13/2010' ] raise: Error "invalid, but some implementations just jump to the next month"! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/9/2010 22:03'!
testDisinfectUS
	field formatString: 'MM/DD/YYYY'.
	self assert: (field disinfect: '08/09/2010') = (Date year: 2010 month: 8 day: 9)! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/9/2010 22:02'!
testInfectISO
	field formatString: 'YYYY-MM-DD'.
	self assert: (field infect: (Date year: 1999 month: 12 day: 31)) = '1999-12-31'! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/9/2010 18:56'!
testInfectUK
	field formatString: 'DD/MM/YYYY'.
	self assert: (field infect: (Date year: 1999 month: 12 day: 31)) = '31/12/1999'! !

!DateFieldTest methodsFor: 'tests' stamp: 'KenTreis 8/9/2010 22:04'!
testInfectUS
	field formatString: 'MM/DD/YYYY'.
	self assert: (field infect: (Date year: 1999 month: 12 day: 31)) = '12/31/1999'.
	self assert: (field infect: (Date year: 2009 month: 7 day: 8)) = '07/08/2009'! !

!DateFieldTest methodsFor: 'tests' stamp: 'AnthonyKaufman 8/10/2010 15:25'!
testValidateInput
	field input: String new.
	field validateInput.
	self assert: field isValid.
	field beRequired.
	field validateInput.
	self deny: field isValid.
	field input: ''! !

!DateFieldTest methodsFor: 'tests' stamp: 'hlsf 4/14/2023 16:53:30'!
testValidationOnDate
	field beRequired.
	field addCondition: [ :input :disinfected | disinfected > (Date year: 2010 month: 1 day: 1) or: [disinfected = (Date year: 2010 month: 1 day: 1)] ].
	field input: '12/31/2009'.
	field validateInput.
	self deny: field isValid.
	field input: '01/01/2010'.
	field validateInput.
	self assert: field isValid! !

!FieldTest methodsFor: 'running' stamp: 'kdt 8/26/2008 21:59'!
testRequired
	| field |
	field := StringField new.
	field beRequired.
	field input: ''.
	field validateInput.
	self deny: field isValid.
	field beOptional.
	field input: ''.
	field validateInput.
	self assert: field isValid.
	self assert: field value isNil.
	field beRequired.
	field input: 'text'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 'text'! !

!FieldTest methodsFor: 'running' stamp: 'hlsf 4/16/2023 16:50:46'!
testValidateInput
	| field |
	field := Field new.
	field input: 'Foo Bar'.
	field validateInput.
	self assert: field input = 'Foo Bar'.
	field input: ''.
	field validateInput.
	self assert: field input = ''.
	self should: [field input: true] raise: Error "Not a CheckboxField"
! !

!FloatFieldTest methodsFor: 'running' stamp: 'KenTreis 8/5/2010 17:10'!
assertValueEquals: aFloat within: aTolerance
	self assert: (field value - aFloat) abs < aTolerance! !

!FloatFieldTest methodsFor: 'running' stamp: 'kdt 7/15/2009 18:02'!
setUp
	field := FloatField new! !

!FloatFieldTest methodsFor: 'running' stamp: 'kdt 7/15/2009 18:02'!
testBlankInput
	field input: ''.
	field validateInput.
	self assert: field isValid.
	field beRequired.
	field input: ''.
	field validateInput.
	self deny: field isValid! !

!FloatFieldTest methodsFor: 'running' stamp: 'KenTreis 8/5/2010 17:11'!
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 5.
	field input: '0.2'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.2 within: 0.01.
	field input: 'asdf'.
	field validateInput.
	self deny: field isValid.
	field input: '.87'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.87 within: 0.001! !

!IntegerFieldTest methodsFor: 'running' stamp: 'kdt 4/4/2008 11:21'!
setUp
	field := IntegerField new! !

!IntegerFieldTest methodsFor: 'running' stamp: 'kdt 8/26/2008 21:59'!
testBlankInput
	field input: ''.
	field validateInput.
	self assert: field isValid.
	field beRequired.
	field input: ''.
	field validateInput.
	self deny: field isValid! !

!IntegerFieldTest methodsFor: 'running' stamp: 'kdt 8/26/2008 21:59'!
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 5.
	field input: '0.2'.
	field validateInput.
	self deny: field isValid.
	field input: '.9'.
	field validateInput.
	self deny: field isValid! !

!PercentageFieldTest methodsFor: 'running' stamp: 'KenTreis 8/5/2010 17:09'!
assertValueEquals: aFloat within: aTolerance
	self assert: (field value - aFloat) abs < aTolerance! !

!PercentageFieldTest methodsFor: 'running' stamp: 'AlanWostenberg 5/17/2010 16:49'!
testBlankInput
	field
		input: '';
		validateInput.
	self assert: field isValid.
	field
		beRequired;
		input: '';
		validateInput.
	self deny: field isValid! !

!PercentageFieldTest methodsFor: 'running' stamp: 'KenTreis 8/5/2010 17:10'!
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.05 within: 0.001.
	field input: '0.2'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.002 within: 0.0001.
	field input: '.9'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.009 within: 0.0001! !

!PercentageFieldTest methodsFor: 'initialize-release'!
setUp
	field := PercentageField new! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/15/2023 21:24:09'!
errorsColumn
" Return a column layout morph where to plug the error messages "
	^ widget firstSubmorph ! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/15/2023 21:22:13'!
exampleMorph
" A label morph, it may not exist if no example was provided "
	^ self inputColumn submorphCount = 1 
		ifTrue: [nil] 
		ifFalse: [self inputColumn firstSubmorph ]! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/15/2023 21:24:16'!
inputColumn
	^ widget lastSubmorph! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/15/2023 21:19:45'!
inputMorph
"The widget morph the represent the model "
	^ self inputColumn lastSubmorph ! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/15/2023 12:56:07'!
inputMorphContents
	^ self inputMorph contents! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/16/2023 16:48:38'!
inputMorphContents: anInput
	self inputMorph contents: anInput! !

!Field methodsFor: 'accessing widget' stamp: 'hlsf 4/16/2023 11:32:01'!
labelAndWidget
	modifyBlock ifNotNil: [ " Last minute user customization "
		modifyBlock valueWithPossibleArgs: 
			(Array with: widget with: self inputMorph with: self exampleMorph with: self errorsColumn)].
	^ label  -> widget! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:04'!
addCondition: aBlock 
	self addCondition: aBlock labeled: 'Invalid entry'! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:04'!
addCondition: aBlock labeled: aStringOrBlock 
	conditions add: aStringOrBlock -> aBlock! !

!Field methodsFor: 'accessing' stamp: 'kdt 4/4/2008 13:48'!
beOptional
	isRequired := false! !

!Field methodsFor: 'accessing' stamp: 'kdt 4/4/2008 13:49'!
beRequired
	isRequired := true! !

!Field methodsFor: 'accessing' stamp: 'kdt 4/4/2008 13:50'!
beRequired: aStringOrBlock 
	self beRequired.
	self requirementCondition key: aStringOrBlock! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:04'!
callback: aBlock 
	callback := aBlock! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:04'!
customize: aBlock 
	modifyBlock := aBlock! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:03'!
errors
	^ errors! !

!Field methodsFor: 'accessing' stamp: 'hlsf 4/16/2023 17:37:16'!
example: aString
| exampleString |
	exampleString := (String streamContents: [:s | s nextPut: $( ; nextPutAll: aString ; nextPut: $)]) asText italic.
	self exampleMorph 
		ifNil: [ "Instantiate a new label and add it below the input morph "
			self inputColumn 
				addMorph: (LabelMorph contents: exampleString )
				layoutSpec: LayoutSpec keepMorphExtent]
		ifNotNil: [	:labelMorph |
			labelMorph contents: exampleString ]! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:03'!
input
	^ input! !

!Field methodsFor: 'accessing' stamp: 'hlsf 4/16/2023 17:00:35'!
input: val 
"The input value as keyin by the user. A string most of the time "
	| trimmed |
	trimmed := ((val respondsTo: #withBlanksTrimmed) and: [ val isSymbol not ]) 
		ifTrue: [ val withBlanksTrimmed ]
		ifFalse: [ val ].
	input := ((trimmed respondsTo: #isEmpty) and: [ trimmed isEmpty ]) 
		ifTrue: [ nil ]
		ifFalse: [ trimmed ]! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:02'!
key
	^ key! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 21:53'!
key: anObject 
	key := anObject! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:02'!
label
	^ label! !

!Field methodsFor: 'accessing' stamp: 'hlsf 4/15/2023 09:59:33'!
label: aString
	label := aString ! !

!Field methodsFor: 'accessing' stamp: 'hlsf 4/15/2023 14:51:38'!
on: accessor of: model
	key ifNil: [key := accessor ].
	self value: (model perform: accessor ).
	self inputMorphContents: input.
	self 
		callback: [:val | model perform: (accessor, ':') asSymbol with: val]! !

!Field methodsFor: 'accessing' stamp: 'AnthonyKaufman 7/6/2010 09:51'!
save
	callback
		ifNotNil: [ 
			callback numArgs = 1
				ifTrue: [ callback value: value ]
				ifFalse: [ callback value ] ]! !

!Field methodsFor: 'accessing' stamp: 'kdt 1/28/2008 22:01'!
value
	^ value! !

!Field methodsFor: 'accessing' stamp: 'hlsf 4/15/2023 14:48:23'!
value: anObject
"The model I will present an object "
	value := anObject .
	input := self infect: anObject .
	self valueChanged! !

!Field methodsFor: 'private' stamp: 'kdt 4/4/2008 13:51'!
addRequirementCondition
	self addCondition: [:object | isRequired not or: [object notNil]]
		labeled: 'This field is required.'! !

!Field methodsFor: 'private' stamp: 'hlsf 4/15/2023 14:46:16'!
disinfect: aString
	"Convert aString into the type of object that this field ultimately represents"
	
	^aString ifEmpty: [nil]! !

!Field methodsFor: 'private' stamp: 'hlsf 4/16/2023 11:39:47'!
evaluate: aBlockOrString withPossibleArguments: anArray
	^ aBlockOrString isBlock
		ifFalse: [aBlockOrString asString ]
		ifTrue: [aBlockOrString valueWithPossibleArgs: anArray]
! !

!Field methodsFor: 'private' stamp: 'hlsf 4/15/2023 14:45:59'!
infect: model
	"Convert the model into the type of object that this field's widget expects for a value"
	
	^model ifNil: ['']! !

!Field methodsFor: 'private' stamp: 'kdt 4/4/2008 13:50'!
requirementCondition
	^ conditions first! !

!Field methodsFor: 'private' stamp: 'hlsf 4/16/2023 17:12:54'!
validateConditions
	^ self validateUserConditions ! !

!Field methodsFor: 'private' stamp: 'hlsf 4/15/2023 22:07:48'!
validateInput
	errors := OrderedCollection new.
	self input: self inputMorphContents. "retrieve the input from the input Morph"
	self validateConditions.
	self isValid ifTrue: [ self value: (input ifNotNil: [ self disinfect: input ]) ].
	self errorsColumn removeAllMorphs.
	errors do: [:errorMsg | 
		self errorsColumn 
			addMorph: (LabelMorph contents: '• ', errorMsg :: color: Color red)		
			layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0)			].
	self inputMorph backgroundColor: (self isValid 
		ifTrue: [self inputMorph defaultBackgroundColor]
		ifFalse: [Color red muchLighter])! !

!Field methodsFor: 'private' stamp: 'hlsf 4/16/2023 17:12:36'!
validateUserConditions
	| disinfected arguments |
	disinfected := [ self disinfect: input ] on: Error do: [ :ex | nil ].
	arguments := Array with: input with: disinfected.
	conditions
		do: [ :each | 
			(self evaluate: each value withPossibleArguments: arguments)
				ifFalse: [ 
					errors add: (self evaluate: each key withPossibleArguments: arguments).
					each = self requirementCondition
						ifTrue: [ ^ self ] ] ]! !

!Field methodsFor: 'private'!
valueChanged! !

!Field methodsFor: 'initialize-release' stamp: 'hlsf 4/16/2023 17:38:26'!
initialize
	conditions := OrderedCollection new.
	errors := OrderedCollection new.
	widget := LayoutMorph newColumn ::
		color: Color transparent;
		separation: 4@2;
		addMorph: (LayoutMorph newRow name: 'input' :: 
				color: Color transparent; 
				separation: 4@2);  
		addMorph: (LayoutMorph newRow name: 'error' :: 
				color: Color transparent;
				axisEdgeWeight: #rowLeft) . 
	isRequired := false.
	label := 'unammed label'.
	self setInputWidget.
	self addRequirementCondition! !

!Field methodsFor: 'initialize-release' stamp: 'hlsf 4/16/2023 16:05:06'!
setInputWidget
"
	Subclass according to the nature of the input 
	For most input we need a text entry morph, so make it the default one 
"
	self inputColumn
		addMorph: TextEntryMorph new layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1)! !

!Field methodsFor: 'testing' stamp: 'kdt 4/4/2008 13:45'!
isRequired
	^ isRequired! !

!Field methodsFor: 'testing' stamp: 'kdt 1/28/2008 22:02'!
isValid
	^ errors isEmpty! !

!CheckboxField methodsFor: 'rendering'!
renderParagraphOn: html
	html
		paragraph:
			[| id |
			id := html nextId.
			self renderWidgetId: id on: html.
			self renderLabelFor: id on: html].
	self isValid ifFalse: [self renderErrorsOn: html]! !

!CheckboxField methodsFor: 'rendering'!
renderTableRowOn: html
	html
		tableRow:
			[html tableData.
			html
				tableData:
					[| id |
					id := html nextId.
					self renderWidgetId: id on: html.
					self renderLabelFor: id on: html].
			self isValid ifFalse: [html tableData: [self renderErrorsOn: html]]]! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/16/2023 17:19:33'!
disinfect: aString
	| year month day rs |
	rs := aString readStream.
	^ [ 
	format
		do: [ :token | 
			(#('YYYY' 'MM' 'DD') includes: token)
				ifTrue: [ 
					token = 'YYYY'
						ifTrue: [ year := Number readFrom: rs ].
					token = 'MM'
						ifTrue: [ 
							month := Number readFrom: rs.
							month = 0
								ifTrue: [ ^ nil ] ].
					token = 'DD'
						ifTrue: [ 
							day := Number readFrom: rs.
							day = 0
								ifTrue: [ ^ nil ] ] ]
				ifFalse: [ rs next: token size ] ].
	Date year: year month: month day: day ] on: Error do: [ :ex | nil ]! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/14/2023 16:47:04'!
format: aDate dayOn: ws
	ws nextPutAll: (aDate dayOfMonth  printStringBase: 10 length: 2 padded: true)! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/14/2023 16:46:37'!
format: aDate monthOn: ws
	ws nextPutAll: (aDate monthIndex  printStringBase: 10 length: 2 padded: true)! !

!DateField methodsFor: 'private' stamp: 'KenTreis 8/9/2010 19:08'!
format: aDate token: aToken on: ws
	| map function |
	map := Dictionary new.
	map
		at: 'MM' put: #format:monthOn:;
		at: 'DD' put: #format:dayOn:;
		at: 'YYYY' put: #format:yearOn:.
	function := map at: aToken ifAbsent: [ ^ ws nextPutAll: aToken ].
	self perform: function with: aDate with: ws! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/14/2023 16:46:10'!
format: aDate yearOn: ws
	ws nextPutAll: (aDate yearNumber  printStringBase: 10 length: 4 padded: true)! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/16/2023 16:23:04'!
infect: aDate
	| ws |
	aDate ifNil: [^''].
	ws := String new writeStream.
	format do: [ :token | self format: aDate token: token on: ws ].
	^ ws contents! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/16/2023 16:54:15'!
initialize
	super initialize.
	self formatString: 'DD/MM/YYYY'! !

!DateField methodsFor: 'private' stamp: 'hlsf 4/16/2023 17:24:09'!
validateConditions
	(input notNil and: [(self disinfect: input) isNil])
		ifTrue: [ errors add: 'Date not in format ', (String streamContents: [:s | format asStringOn: s delimiter: '' last: '']) ].
	self validateUserConditions! !

!DateField methodsFor: 'accessing' stamp: 'KenTreis 8/9/2010 22:37'!
formatString
	| ws |
	ws := String new writeStream.
	format do: [ :token | ws nextPutAll: token ].
	^ ws contents! !

!DateField methodsFor: 'accessing' stamp: 'hlsf 4/16/2023 16:29:58'!
formatString: aString
	"aString should be some combination of MM, DD, and YYYY (use whatever separator you want).
	Note that the input parser doesn't require leading zeros like 'MM' or 'DD' implies, but it prints them in its output.
	
	Examples:
		(ISO format): YYYY-MM-DD
		(USA format): MM/DD/YYYY
		(British): DD/MM/YYYY
		(Swiss) DD.MM.YY
	"

	| chunks |
	self example: aString.
	chunks := OrderedCollection with: aString.
	#('MM' 'DD' 'YYYY')
		do: [ :placeholder | 
			| tokens |
			tokens := OrderedCollection new.
			chunks
				do: [ :each | 
					| index |
					index := each findString: placeholder.
					index = 0
						ifTrue: [ tokens add: each ]
						ifFalse: [ 
							| pre post |
							pre := each copyFrom: 1 to: index - 1.
							pre isEmpty
								ifFalse: [ tokens add: pre ].
							tokens add: placeholder.
							post := each copyFrom: index + placeholder size to: each size.
							post isEmpty
								ifFalse: [ tokens add: post ] ] ].
			chunks := tokens ].
	format := chunks asArray! !

!FloatField methodsFor: 'private' stamp: 'KenTreis 8/5/2010 17:07'!
disinfect: aString
	| trimmed rs |
	trimmed := aString withBlanksTrimmed select: [ :char | '1234567890.' includes: char ].
	trimmed isEmpty
		ifTrue: [ ^ nil ].
	(trimmed first = $. and: [ (trimmed occurrencesOf: $.) = 1 ])
		ifTrue: [ trimmed := '0' , trimmed ].
	rs := trimmed readStream.
	^ [ Number readFrom: rs ] on: Error do: [ :ex | nil ]! !

!FloatField methodsFor: 'private' stamp: 'kdt 8/28/2008 09:57'!
infect: aNumber 
	^ aNumber asFloat printString! !

!FloatField methodsFor: 'private' stamp: 'kdt 7/15/2009 18:02'!
validateConditions
	super validateConditions.
	self isValid ifFalse: [ ^ self ].
	input ifNil: [ ^ self ].
	(self disinfect: input) ifNil: [ errors add: 'Invalid number.' ]! !

!FloatField methodsFor: 'rendering' stamp: 'kdt 8/28/2008 09:58'!
widgetOn: html 
	^(html textInput)
		value: input;
		yourself! !

!PercentageField methodsFor: 'private' stamp: 'AlanWostenberg 5/17/2010 16:25'!
disinfect: aString 
	^ (super disinfect: aString) ifNotNilDo: [ :number | (number / 100) asFloat ]! !

!PercentageField methodsFor: 'private' stamp: 'kdt 8/28/2008 10:00'!
infect: aNumber 
	^ super infect: aNumber * 100! !

!IntegerField methodsFor: 'private' stamp: 'AlanWostenberg 5/17/2010 16:38'!
disinfect: aString 
	(aString reject: [:each | each isDigit]) notEmpty ifTrue: [^nil].
	^ [aString asNumber] on: Error do: [:ex | nil ]! !

!IntegerField methodsFor: 'private' stamp: 'kdt 8/28/2008 09:55'!
infect: anInteger 
	^ anInteger printString! !

!IntegerField methodsFor: 'private' stamp: 'kdt 7/15/2009 18:07'!
validateConditions
	super validateConditions.
	self isValid ifFalse: [ ^ self ].
	input ifNil: [ ^ self ].
	(self disinfect: input) isInteger ifFalse: [ errors add: 'Fractions and decimals are not allowed here.' ]! !

!IntegerField methodsFor: 'rendering'!
widgetOn: html 
	^(html textInput)
		value: input;
		size: 6;
		yourself! !

!SelectField methodsFor: 'initialization' stamp: 'kdt 8/28/2008 10:03'!
initialize
	super initialize.
	optionalLabel := 'Please Select'! !

!SelectField methodsFor: 'private'!
labelFor: anObject
	^labels ifNil: [anObject] ifNotNil: [labels value: anObject]! !

!SelectField methodsFor: 'accessing'!
labels
	^labels! !

!SelectField methodsFor: 'accessing'!
labels: anObject
	labels := anObject! !

!SelectField methodsFor: 'accessing'!
list
	^list! !

!SelectField methodsFor: 'accessing'!
list: anObject
	list := anObject! !

!SelectField methodsFor: 'accessing' stamp: 'kdt 4/4/2008 11:19'!
onChange
	^ onChange! !

!SelectField methodsFor: 'accessing' stamp: 'kdt 4/4/2008 11:19'!
onChange: anObject
	onChange := anObject! !

!SelectField methodsFor: 'accessing' stamp: 'kdt 8/28/2008 10:03'!
optionalLabel: aString 
	optionalLabel := aString! !

!SelectField methodsFor: 'rendering' stamp: 'kdt 8/28/2008 10:03'!
widgetOn: html 
	| tag |
	tag := html select.
	tag selected: input.
	onChange ifNotNil: [tag onChange: (onChange value: html)].
	self isRequired 
		ifTrue: 
			[tag list: list.
			tag labels: [:item | self labelFor: item]]
		ifFalse: 
			[tag list: #(nil ) , list.
			tag 
				labels: [:item | item ifNil: [optionalLabel] ifNotNil: [self labelFor: item]]].
	^ tag! !

!StringField methodsFor: 'rendering' stamp: 'kdt 1/28/2008 22:22'!
widgetOn: html 
	^ (html textInput)
		value: input;
		yourself! !

!PasswordField methodsFor: 'rendering'!
widgetOn: html
	^html passwordInput! !

!TextField methodsFor: 'rendering'!
widgetOn: html
	^(html textArea)
		value: input;
		yourself! !

!TimeField methodsFor: 'private' stamp: 'KenTreis 8/3/2010 22:19'!
disinfect: aString
	^Time readFrom: aString withBlanksTrimmed readStream! !

!TimeField methodsFor: 'private' stamp: 'kdt 8/28/2008 09:56'!
infect: aTime
	^aTime asString! !

!TimeField methodsFor: 'rendering'!
widgetOn: html
	^(html textInput)
		value: input;
		size: 6;
		yourself! !

!Mold methodsFor: 'accessing' stamp: 'kdt 4/4/2008 11:20'!
at: aKey 
	^ fields detect: [:each | each key = aKey] ifNone: [nil]! !

!Mold methodsFor: 'accessing'!
combinedErrorsFrom: aCollectionOfKeys 
	^(fields select: [:field | aCollectionOfKeys includes: field key]) 
		inject: Array new
		into: [:errors :each | errors , each errors]! !

!Mold methodsFor: 'accessing'!
errors
	^fields inject: Array new into: [:errors :each | errors , each errors]! !

!Mold methodsFor: 'accessing'!
fields
	^fields! !

!Mold methodsFor: 'accessing'!
save
	fields do: #save! !

!Mold methodsFor: 'accessing' stamp: 'kdt 8/26/2008 21:32'!
validate
	fields do: [ :each | each validateInput ]! !

!Mold methodsFor: 'accessing'!
valueAt: aKey
	^(self at: aKey) value! !

!Mold methodsFor: 'initialize-release' stamp: 'kdt 1/28/2008 22:15'!
initialize
	fields := OrderedCollection new! !

!Mold methodsFor: 'fields'!
checkboxField
	^fields add: CheckboxField new! !

!Mold methodsFor: 'fields' stamp: 'KenTreis 8/9/2010 22:38'!
dateField
	^ fields add: DateField new! !

!Mold methodsFor: 'fields' stamp: 'alk 12/14/2010 10:57'!
emailField
	^ self stringField
		addCondition: 
				[ :val | 
				val isNil or: [ val matchesRegex: '([-_\w]\.?)+@[-\w]+\.[-\w]+(\.\w+)*' ] ]
			labeled: 'Invalid email address';
		yourself! !

!Mold methodsFor: 'fields'!
integerField
	^fields add: IntegerField new! !

!Mold methodsFor: 'fields'!
passwordField
	^fields add: PasswordField new! !

!Mold methodsFor: 'fields'!
percentageField
	^self percentageField: 'Invalid percentage'! !

!Mold methodsFor: 'fields' stamp: 'kdt 4/4/2008 11:14'!
percentageField: anErrorMessage 
	^ fields 
		add: (PercentageField new addCondition: 
					[:val | 
					val isNil or: 
							[(val matchesRegex: '(\d)+(.\d+)?%?') 
								or: [val matchesRegex: '(\d)*.(\d)+%?']]]
				labeled: anErrorMessage)! !

!Mold methodsFor: 'fields'!
selectField
	^fields add: SelectField new! !

!Mold methodsFor: 'fields'!
stringField
	^fields add: StringField new! !

!Mold methodsFor: 'fields'!
textField
	^fields add: TextField new! !

!Mold methodsFor: 'fields'!
timeField
	^fields add: TimeField new! !

!Mold methodsFor: 'fields'!
zipCodeField
	^fields add: (StringField new 
				addCondition: [:val | val isNil or: [val matchesRegex: '(\d\d\d\d\d)(-\d\d\d\d)?']]
				labeled: 'Invalid zip code')! !

!Mold methodsFor: 'rendering' stamp: 'hlsf 4/15/2023 14:36:58'!
renderForms
	^ LabelGroup with: (fields collect: #labelAndWidget)! !

!Mold methodsFor: 'testing' stamp: 'KenTreis 7/27/2011 13:49'!
isValid
	self validate.
	^ fields allSatisfy: #isValid! !

!Mold methodsFor: 'removing' stamp: 'kdt 4/4/2008 11:18'!
remove: aKey
	| field |
	field := self at: aKey.
	fields remove: field! !

!Mold methodsFor: 'removing' stamp: 'kdt 4/4/2008 11:18'!
remove: aKey ifAbsent: exceptionBlock 
	| field |
	field := self at: aKey.
	fields remove: field ifAbsent: exceptionBlock! !

!MoldExample methodsFor: 'initialization' stamp: 'hlsf 4/16/2023 14:17:34'!
buildMold
	| name email confirmEmail |
	mold := Mold new.
	name := mold stringField
		key: #name;
		label: 'Your Name:';
		beRequired;
		addCondition: [ :val | val includesSubString: ' ']
			labeled: 
				[ :wrong | 
				'Please enter your first and last name. I couldn''t find a space in {1}' format:  wrong ].
	email := mold emailField
		key: #email;
		label: 'Email Address:'.
	confirmEmail := mold emailField
		key: #confirmEmail;
		label: 'Confirm Email:'.
	email 
		addCondition: [ :input | input = confirmEmail input ]
		labeled: 'Email addresses did not match.'.
	confirmEmail 
		addCondition: [ :input | input = email input ]
		labeled: 'Email addresses did not match.'.
	mold textField
		key: #about;
		label: 'Please tell us more about yourself.';
		beRequired;
		customize: 
			[ :textarea | 
			textarea
				rows: 5;
				columns: 60 ].
	mold checkboxField
		key: #spamMe;
		label: 'Yes, please sign me up for the email newsletter!!';
		addCondition: [ :val | name isValid not or: [ val or: [ name value first = $K ] ] ]
			labeled: 'Sorry, you may not opt out of our spam unless your first name starts with K.';
		value: true! !

!MoldExample methodsFor: 'initialization' stamp: 'hlsf 4/16/2023 14:17:59'!
initialize
	super initialize.
	self buildMold! !

!MoldExample class methodsFor: 'as yet unclassified' stamp: 'hlsf 4/16/2023 17:53:27'!
one
"
	MoldExample one
"
	| mold panel |
	mold := Mold new.
	(mold stringField)
		label: 'Firstname:';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold stringField)
		label: 'Lastname:';
		on: #propertyValue of: ValueHolder new;
		addCondition: [:input| input size >= 2] 
		labeled: [:input | 'There is no such short name.'];
		beRequired: 'Lastname required.'.
	(mold dateField )
		label: 'Birth date:';
		on: #propertyValue of: ValueHolder new;
		beRequired.

	panel := nil.
	panel := PluggableDialogPanel 
		open: mold 
		label: 'Example One' 
		view: #renderForms 
		accept: [mold validate.
			panel morphExtent: panel minimumExtent. "I don't like to do it manually"
			mold isValid 	ifTrue: [
				mold save.
				panel delete] ]
			
	! !

!MoldExample class methodsFor: 'as yet unclassified' stamp: 'hlsf 4/16/2023 17:47:33'!
two
"
	MoldExample two
"
 | mold panel |
	mold := Mold new.
	(mold stringField)
		label: 'My label';
		on: #propertyValue of: ValueHolder new;
		example: 'This is an example';
		customize: [:widget :input :example | 
			widget color: Color black.
			input color: Color blue; backgroundColor: Color cyan.
			example color: Color orange];
		addCondition: [:input| input size >= 4] 
		labeled: [:input | 'You  only key in ', input size asString, ' character(s), a minimum of 4 is required.'];
		beRequired.
	panel := nil.
	panel := PluggableDialogPanel 
		open: mold 
		label: 'Example Two' 
		view: #renderForms 
		accept: [mold validate.
			panel morphExtent: panel minimumExtent. "I don't like to do it manually"
			mold isValid 	ifTrue: [
				mold save.
				panel delete] ]! !