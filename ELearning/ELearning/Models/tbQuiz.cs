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
    
    public partial class tbQuiz
    {
        public int QuizID { get; set; }
        public string Quiz { get; set; }
        public Nullable<int> Choices { get; set; }
        public int LessonID { get; set; }
    }
}
