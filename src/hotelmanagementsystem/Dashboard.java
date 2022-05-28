package hotelmanagementsystem;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Dashboard extends JFrame implements ActionListener
{
   JMenuBar mb;
   JMenu m1,m2;
   JMenuItem i1,i2,i3,i4;
   
   Dashboard()
   {
       mb=new JMenuBar();
       add(mb);
       
       m1=new JMenu("HOTEL MANAGEMENT");
       m1.setForeground(Color.red);
       m1.setFont(new Font("serif",Font.PLAIN,20));
       mb.add(m1);
       
       m2=new JMenu("ADMIN");
       m2.setForeground(Color.blue);
       m2.setFont(new Font("serif",Font.PLAIN,20));
       mb.add(m2);
       
       i1=new JMenuItem("RECEPTION");
       i1.setFont(new Font("serif",Font.PLAIN,20));
       i1.addActionListener(this);
       m1.add(i1);
       
       i2=new JMenuItem("ADD EMPLOYEE");
       i2.setFont(new Font("serif",Font.PLAIN,20));
       i2.addActionListener(this);
       m2.add(i2);
       
       i3=new JMenuItem("ADD ROOMS");
       i3.setFont(new Font("serif",Font.PLAIN,20));
       i3.addActionListener(this);
       m2.add(i3);
       
       i4=new JMenuItem("ADD DRIVERS");
       i4.setFont(new Font("serif",Font.PLAIN,20));
       i4.addActionListener(this);
       m2.add(i4);
       
       mb.setBounds(0,0,1960,30);
       
       ImageIcon i1=new ImageIcon(ClassLoader.getSystemResource("hotelmanagementsystem/third.jpg"));
       Image i2=i1.getImage().getScaledInstance(1950,1000,Image.SCALE_DEFAULT);
       ImageIcon i3=new ImageIcon(i2);
       JLabel l1=new JLabel(i3);
       l1.setBounds(0,0,1950,1000);
       add(l1);
       
       JLabel l2=new JLabel("THE TAJ GROUP WELCOMES YOU");
       l2.setBounds(450,100,1050,65);
       l2.setForeground(Color.white);
       l2.setFont(new Font("Tahoma",Font.PLAIN,70));
       l1.add(l2);
       
       
       
       
       setLayout(null);
       setTitle("Home");
       setBounds(0,0,1960,1020);
       setVisible(true);
      /* while(true)
        {
            l2.setVisible(false);
            try
            {
                Thread.sleep(800);
            }catch(Exception e){                
            }
            l2.setVisible(true);
            try{
                Thread.sleep(800);
            }catch(Exception e){}
                    
        }*/
       
   }
   
   public void actionPerformed(ActionEvent ae)
   {
       if(ae.getActionCommand().equals("RECEPTION"))
       {
           new Reception().setVisible(true);
       }
       else if(ae.getActionCommand().equals("ADD EMPLOYEE"))
       {
           new AddEmployee().setVisible(true);
       }
       else if(ae.getActionCommand().equals("ADD ROOMS"))
       {
           new AddRooms().setVisible(true);
       }
       else if(ae.getActionCommand().equals("ADD DRIVERS"))
       {
           new AddDriver().setVisible(true);
       }
       
   }
   
    public static void main(String[] args)
    {
        new Dashboard().setVisible(true);
        
    }
}
