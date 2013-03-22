/*
* generated by Xtext
*/
grammar InternalSmachDSL;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.best.of.robotics.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.best.of.robotics.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.best.of.robotics.services.SmachDSLGrammarAccess;

}

@parser::members {

 	private SmachDSLGrammarAccess grammarAccess;
 	
    public InternalSmachDSLParser(TokenStream input, SmachDSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "PrimitivePackage";	
   	}
   	
   	@Override
   	protected SmachDSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRulePrimitivePackage
entryRulePrimitivePackage returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPrimitivePackageRule()); }
	 iv_rulePrimitivePackage=rulePrimitivePackage 
	 { $current=$iv_rulePrimitivePackage.current; } 
	 EOF 
;

// Rule PrimitivePackage
rulePrimitivePackage returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getPrimitivePackageAccess().getStatemachinesStateMachineParserRuleCall_0()); 
	    }
		lv_statemachines_0_0=ruleStateMachine		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPrimitivePackageRule());
	        }
       		add(
       			$current, 
       			"statemachines",
        		lv_statemachines_0_0, 
        		"StateMachine");
	        afterParserOrEnumRuleCall();
	    }

)
)*
;







// Entry rule entryRuleStateMachine
entryRuleStateMachine returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStateMachineRule()); }
	 iv_ruleStateMachine=ruleStateMachine 
	 { $current=$iv_ruleStateMachine.current; } 
	 EOF 
;

// Rule StateMachine
ruleStateMachine returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='statemachine' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getStateMachineAccess().getStatemachineKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getStateMachineAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStateMachineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getStateMachineAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getStateMachineAccess().getActionclientsActionClientParserRuleCall_3_0()); 
	    }
		lv_actionclients_3_0=ruleActionClient		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStateMachineRule());
	        }
       		add(
       			$current, 
       			"actionclients",
        		lv_actionclients_3_0, 
        		"ActionClient");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getStateMachineAccess().getServiceclientsServiceClientParserRuleCall_4_0()); 
	    }
		lv_serviceclients_4_0=ruleServiceClient		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStateMachineRule());
	        }
       		add(
       			$current, 
       			"serviceclients",
        		lv_serviceclients_4_0, 
        		"ServiceClient");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getStateMachineAccess().getActionsstatesActionStateParserRuleCall_5_0()); 
	    }
		lv_actionsstates_5_0=ruleActionState		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStateMachineRule());
	        }
       		add(
       			$current, 
       			"actionsstates",
        		lv_actionsstates_5_0, 
        		"ActionState");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getStateMachineAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleActionClient
entryRuleActionClient returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getActionClientRule()); }
	 iv_ruleActionClient=ruleActionClient 
	 { $current=$iv_ruleActionClient.current; } 
	 EOF 
;

// Rule ActionClient
ruleActionClient returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='ActionClient' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getActionClientAccess().getActionClientKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getActionClientAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActionClientRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getActionClientAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='aname:' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getActionClientAccess().getAnameKeyword_3());
    }
(
(
		lv_actionname_4_0=RULE_STRING
		{
			newLeafNode(lv_actionname_4_0, grammarAccess.getActionClientAccess().getActionnameSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActionClientRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"actionname",
        		lv_actionname_4_0, 
        		"STRING");
	    }

)
)	otherlv_5=',' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getActionClientAccess().getCommaKeyword_5());
    }
	otherlv_6='atype:' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getActionClientAccess().getAtypeKeyword_6());
    }
(
(
		lv_actiontype_7_0=RULE_STRING
		{
			newLeafNode(lv_actiontype_7_0, grammarAccess.getActionClientAccess().getActiontypeSTRINGTerminalRuleCall_7_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActionClientRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"actiontype",
        		lv_actiontype_7_0, 
        		"STRING");
	    }

)
)	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getActionClientAccess().getRightCurlyBracketKeyword_8());
    }
)
;





// Entry rule entryRuleServiceClient
entryRuleServiceClient returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getServiceClientRule()); }
	 iv_ruleServiceClient=ruleServiceClient 
	 { $current=$iv_ruleServiceClient.current; } 
	 EOF 
;

// Rule ServiceClient
ruleServiceClient returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='ServiceClient' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getServiceClientAccess().getServiceClientKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getServiceClientAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getServiceClientRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getServiceClientAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='name:' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getServiceClientAccess().getNameKeyword_3());
    }
(
(
		lv_servicename_4_0=RULE_STRING
		{
			newLeafNode(lv_servicename_4_0, grammarAccess.getServiceClientAccess().getServicenameSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getServiceClientRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"servicename",
        		lv_servicename_4_0, 
        		"STRING");
	    }

)
)	otherlv_5=',' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getServiceClientAccess().getCommaKeyword_5());
    }
	otherlv_6='srv:' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getServiceClientAccess().getSrvKeyword_6());
    }
(
(
		lv_servicesrv_7_0=RULE_STRING
		{
			newLeafNode(lv_servicesrv_7_0, grammarAccess.getServiceClientAccess().getServicesrvSTRINGTerminalRuleCall_7_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getServiceClientRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"servicesrv",
        		lv_servicesrv_7_0, 
        		"STRING");
	    }

)
)	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getServiceClientAccess().getRightCurlyBracketKeyword_8());
    }
)
;





// Entry rule entryRuleActionState
entryRuleActionState returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getActionStateRule()); }
	 iv_ruleActionState=ruleActionState 
	 { $current=$iv_ruleActionState.current; } 
	 EOF 
;

// Rule ActionState
ruleActionState returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='actionstate' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getActionStateAccess().getActionstateKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getActionStateAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActionStateRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getActionStateAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='client:' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getActionStateAccess().getClientKeyword_3());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getActionStateRule());
	        }
        }
	otherlv_4=RULE_ID
	{
		newLeafNode(otherlv_4, grammarAccess.getActionStateAccess().getClientnameActionClientCrossReference_4_0()); 
	}

)
)	otherlv_5=',' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getActionStateAccess().getCommaKeyword_5());
    }
((
(
		{ 
	        newCompositeNode(grammarAccess.getActionStateAccess().getTransitionsTransitionParserRuleCall_6_0_0()); 
	    }
		lv_transitions_6_0=ruleTransition		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActionStateRule());
	        }
       		add(
       			$current, 
       			"transitions",
        		lv_transitions_6_0, 
        		"Transition");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_7=',' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getActionStateAccess().getCommaKeyword_6_1());
    }
)?	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getActionStateAccess().getRightCurlyBracketKeyword_7());
    }
)
;







// Entry rule entryRuleTransition
entryRuleTransition returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTransitionRule()); }
	 iv_ruleTransition=ruleTransition 
	 { $current=$iv_ruleTransition.current; } 
	 EOF 
;

// Rule Transition
ruleTransition returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getTransitionAccess().getOutcomeOUTCOMEParserRuleCall_0_0()); 
	    }
		lv_outcome_0_0=ruleOUTCOME		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getTransitionRule());
	        }
       		set(
       			$current, 
       			"outcome",
        		lv_outcome_0_0, 
        		"OUTCOME");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_1='=>' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getTransitionAccess().getEqualsSignGreaterThanSignKeyword_1());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getTransitionRule());
	        }
        }
	otherlv_2=RULE_ID
	{
		newLeafNode(otherlv_2, grammarAccess.getTransitionAccess().getStateActionStateCrossReference_2_0()); 
	}

)
))
;





// Entry rule entryRuleOUTCOME
entryRuleOUTCOME returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getOUTCOMERule()); } 
	 iv_ruleOUTCOME=ruleOUTCOME 
	 { $current=$iv_ruleOUTCOME.current.getText(); }  
	 EOF 
;

// Rule OUTCOME
ruleOUTCOME returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='succeeded' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getOUTCOMEAccess().getSucceededKeyword_0()); 
    }

    |
	kw='preempted' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getOUTCOMEAccess().getPreemptedKeyword_1()); 
    }

    |
	kw='aborted' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getOUTCOMEAccess().getAbortedKeyword_2()); 
    }
)
    ;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

