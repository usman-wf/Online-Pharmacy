using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.ComponentModel;

namespace Railway_Management_System.DAL
{

    public class BasePage : System.Web.UI.Page
    {
        protected Users CurrentUser
        {
            get
            {
                return Users.CurrentUser;
            }
        }
    }
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
    }

    public class Users
    {
        private static Users instance;
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string FullName { get; private set; }
        public int ID { get; private set; }
        public Users()
        {
            FirstName = "";
            LastName = "";
            FullName = "";
            ID = -1;
        }

        public static Users Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Users();
                }
                return instance;
            }
        }
        public static void UpdateUser(int id , string fn , string ln)
        {
            instance.FirstName = fn;
            instance.LastName = ln;
            instance.FullName = fn + " " + ln;
            instance.ID = id;
        }

        public static Users CurrentUser
        {
            get
            {
                return Instance;
            }
        }

        public static bool IsLoggedIn()
        {
            return !string.IsNullOrEmpty(Instance.FirstName) && !string.IsNullOrEmpty(Instance.LastName);
        }
        public static void Logout()
        {
            instance.FirstName = instance.LastName = instance.FullName = "";
            Instance.ID = -1;
        }
    }
}