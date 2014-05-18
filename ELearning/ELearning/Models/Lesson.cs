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
    
    public partial class Lesson
    {
        public Lesson()
        {
            this.AssignedRoles = new HashSet<AssignedRole>();
            this.Exercises = new HashSet<Exercise>();
            this.Quizs = new HashSet<Quiz>();
            this.Sections = new HashSet<Section>();
        }
    
        public int LessonID { get; set; }
        public string LessonName { get; set; }
        public int SubjectID { get; set; }
        public int LessonNumber { get; set; }
        public string Description { get; set; }
    
        public virtual Subject Subject { get; set; }
        public virtual ICollection<AssignedRole> AssignedRoles { get; set; }
        public virtual ICollection<Exercise> Exercises { get; set; }
        public virtual ICollection<Quiz> Quizs { get; set; }
        public virtual ICollection<Section> Sections { get; set; }
    }
}
