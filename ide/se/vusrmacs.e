#include "slick.sh"
_command ttEnclose() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _macro('R',1);
    _deselect();
    prev_word();
    keyin("<span");
    last_event(name2event(' '));maybe_complete();
    keyin("class=\"fixedFontFace\">");
    next_word();
    keyin("</span>");
}
_command wrapHTMLStrong() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    surround_with('general_tag');
}
_command latex_env() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _str label_name="";

    if (get_string(env_name,"Environment name: ",FILE_ARG";Help message")) {
       return(1); // Cancel key pressed.
    }

    if (env_name =="equation") {
        message("hello equation");
        if (get_string(label_name,"Equation label (eqn:???): ",FILE_ARG";Help message")) {
           return(1); // Cancel key pressed.
        }
    }

    if (env_name =="figure") {
        if (get_string(label_name,"Figure label (eqn:???): ",FILE_ARG";Help message")) {
           return(1); // Cancel key pressed.
        }
    }

    if (env_name == "table") {
        if (get_string(label_name,"Table label (tbl:???): ",FILE_ARG";Help message")) {
           return(1); // Cancel key pressed.
        }
    }

    _insert_text("\\begin{":+env_name:+"}\n");
    if (label_name != "") {
        _insert_text("\\label{sec:":+label_name:+"}\n");
    }
    _insert_text("\n");
    _insert_text("\\end{":+env_name:+"}\n");
    cursor_up('1');

}

_command latex_sec() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    if (get_string(sec_type,"Section type: ",FILE_ARG";Help message")) {
       return(1); // Cancel key pressed.
    }
    
    if (get_string(sec_title,"Section title: ",FILE_ARG";Help message")) {
       return(1); // Cancel key pressed.
    }
        
    if (get_string(label_name,"Section label (sec:???): ",FILE_ARG";Help message")) {
       return(1); // Cancel key pressed.
    }
            
    _insert_text("\\":+sec_type:+"{":+sec_title:+"}\n");
    if (label_name != "") {
        _insert_text("\\label{sec:":+label_name:+"}\n");
    }

}

_command latex_font_bf() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _insert_text("\\textbf{}");
    cursor_left('2');
}
_command latex_font_em() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _insert_text("\\emph{}");
    cursor_left('2');
}
_command latex_font_sl() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _insert_text("\\textsl{}");
    cursor_left('2');
}
_command latex_font_tt() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _insert_text("\\texttt{}");
    cursor_left('2');
}
_command latex_font_sc() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
    _insert_text("\\textsc{}");
    cursor_left('2');
}

