//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ELearning.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Subscriber
    {
        public Subscriber()
        {
            this.SubscriberDetails = new HashSet<SubscriberDetail>();
        }
    
        public int SubscriberID { get; set; }
        public string SubscriberEmail { get; set; }
        public string PreferenceType { get; set; }
    
        public virtual ICollection<SubscriberDetail> SubscriberDetails { get; set; }
    }
}
