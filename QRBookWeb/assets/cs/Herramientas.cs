﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;

namespace QRBookWeb.assets.cs
{
    public class Herramientas
    {
        public Herramientas()
        {

        }

        public void MsgBox(String ex, Page pg, Object obj) {
            //string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        public void Redirect(String pag)
        {
            RedirectResult redirect = new RedirectResult(pag);
        }
    }
}