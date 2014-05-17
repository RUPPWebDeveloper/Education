using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace ELearning.Models
{
    public class FileIO
    {
        String fileName { get; set; }

        public FileIO(String fileName)
        {
            this.fileName = fileName;
        }

        public void createFile(String fname)
        {

            FileStream fs = null;
            String dir = Path.GetDirectoryName(fname);
            createDirectory(dir);

            if (!File.Exists(fname))
            {
                using (fs = File.Create(fname)) { }

            }

        }

        public void createDirectory(String Dname)
        {
            if (!Directory.Exists(Dname))
            {
                Directory.CreateDirectory(Dname);
            }

        }

        public void writeFile(String fname, String content)
        {
            if (File.Exists(fname))
            {
                using (StreamWriter sw = new StreamWriter(fname))
                {
                    sw.Write(content);
                }

            }
        }

        public String readFile(String fname)
        {
            String content = "";
            if (File.Exists(fname))
            {
                using (TextReader tr = new StreamReader(fname))
                {
                    content = tr.ReadLine();
                }
            }
            return content;
        }
        public void deleteFile(String fname)
        {
            if (File.Exists(fname))
            {
                File.Delete(fname);
            }
        }

        public void removeDirectory(String path)
        {
            foreach (String file in Directory.GetFiles(path))
            {
                File.Delete(file);
            }
            foreach (String subfolder in Directory.GetDirectories(path))
            {

                removeDirectory(subfolder);
            }
            Directory.Delete(path);
        }
    }
}