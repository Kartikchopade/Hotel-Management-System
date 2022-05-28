package hotelmanagementsystem;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import net.proteanit.sql.DbUtils;
public class Department extends JFrame implements ActionListener
{
    
    JButton b1,b2;
    JTable t1;
    Department()
    {
        
        
       
        
        t1=new JTable();
        t1.setBounds(0,50,700,350);
        add(t1);
        
        b1=new JButton("Submit");
        b1.setBackground(Color.black);
        b1.setForeground(Color.white);
        b1.setFont(new Font("Tahoma",Font.PLAIN,17));
        b1.setBounds(180,400,120,30);
        b1.addActionListener(this);
        add(b1);
        
        b2=new JButton("Back");
        b2.setBackground(Color.black);
        b2.setForeground(Color.white);
        b2.setFont(new Font("Tahoma",Font.PLAIN,17));
        b2.setBounds(380,400,120,30);
        b2.addActionListener(this);
        add(b2);
        
        JLabel l3=new JLabel("Department");
        l3.setBounds(150,10,100,20);
        add(l3);
        
        JLabel l4=new JLabel("Budget");
        l4.setBounds(470,10,100,20);
        add(l4);
        
       
        
        getContentPane().setBackground(Color.white);
        setLayout(null);
        setBounds(610,280,700,500);
        setTitle("Department");
        setVisible(true);
    }
    public void actionPerformed(ActionEvent ae)
    {
        if(ae.getSource()==b1)
        {
            try
            {
               String str="select * from department";
               
               Conn c=new Conn();
               
               ResultSet rs=c.s.executeQuery(str);
               t1.setModel(DbUtils.resultSetToTableModel(rs));
               
            }
            catch(Exception e)
            {
                
            }
        }
        else if(ae.getSource()==b2)
        {
            new Reception().setVisible(true);
            this.setVisible(false);
        }
    }
    public static void main(String[] args)
    {
        new Department().setVisible(true);
    }
}
