using System;
using System.Windows;
using System.Windows.Controls;

namespace YourNamespace
{
    public partial class MainWindow : Window
    {
        private int b;
        private int m;

        public MainWindow()
        {
            InitializeComponent();
            // Инициализация других элементов управления и настройка событий
        }

        private void CommandButton1_Click(object sender, RoutedEventArgs e)
        {
            Label1.Content = "Время " + DateTime.Now.ToLongTimeString();

            CommandButton2.IsEnabled = true;
            CommandButton5.IsEnabled = true;

            int f = DateTime.Now.Hour;
            int d = DateTime.Now.Minute;
            int s = 0;
            int v = ComboBox1.SelectedIndex;

            int r;
            switch (v)
            {
                case 0:
                    r = 0;
                    break;
                case 1:
                    r = 3;
                    break;
                case 2:
                    r = 8;
                    break;
                default:
                    r = 0;
                    break;
            }

            // Маршрут 1
            if (OptionButton1.IsChecked == true)
            {
                b += 1;
                m += 1;
                Label8.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 2 + r, s).ToLongTimeString();
                sent = Label8.Content.ToString();
                Label2.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 7 + r, s).ToLongTimeString();
                emm = Label2.Content.ToString();
                Label3.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 12 + r, s).ToLongTimeString();
                valen = Label3.Content.ToString();
                Label5.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 16 + r, s).ToLongTimeString();
                rou = Label5.Content.ToString();
                Label6.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 18 + r, s).ToLongTimeString();
                sent_prib = Label6.Content.ToString();

                OptionButton2.IsEnabled = false;
                OptionButton3.IsEnabled = false;
                OptionButton4.IsEnabled = false;
                OptionButton5.IsEnabled = false;
                OptionButton6.IsEnabled = false;
                CommandButton4.IsEnabled = false;
                CommandButton1.IsEnabled = false;

                // Ваш код для маршрута 1
            }
            // Маршрут 2
            else if (OptionButton2.IsChecked == true)
            {
                b += 1;
                m += 1;
                Label18.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 2 + r, s).ToLongTimeString();
                sent = Label18.Content.ToString();
                Label14.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 5 + r, s).ToLongTimeString();
                rou = Label14.Content.ToString();
                Label15.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 8 + r, s).ToLongTimeString();
                sent_prib = Label15.Content.ToString();
                Label17.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 12 + r, s).ToLongTimeString();
                emm = Label17.Content.ToString();
                Label13.Content = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, f, d + 14 + r, s).ToLongTimeString();
                valen = Label13.Content.ToString();
                
                OptionButton1.IsEnabled = false;
                OptionButton3.IsEnabled = false;
                OptionButton4.IsEnabled = false;
                OptionButton5.IsEnabled = false;
                OptionButton6.IsEnabled = false;
                CommandButton4.IsEnabled = false;
                CommandButton1.IsEnabled = false;

                // Ваш код для маршрута 2
            }
            // Другие маршруты
            else
            {
                // Ваш код для других маршрутов
            }
        }

        private void CommandButton2_Click(object sender, RoutedEventArgs e)
        {
            OptionButton1.IsEnabled = true;
            OptionButton2.IsEnabled = true;
            OptionButton3.IsEnabled = true;
            OptionButton4.IsEnabled = true;
            OptionButton5.IsEnabled = true;
            OptionButton6.IsEnabled = true;
            CommandButton4.IsEnabled = true;
            CommandButton1.IsEnabled = true;
            CommandButton2.IsEnabled = false;
            CommandButton5.IsEnabled = false;

            // Ваш код для обработки события CommandButton2_Click
        }
    }
}
