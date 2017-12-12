using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalrClient.ViewModels
{
    public class MainViewModel : Conductor<PropertyChangedBase>
    {
        private ExecuteViewModel _request;

        public MainViewModel()
        {
            Request = new ExecuteViewModel();
            new SimpleContainer().BuildUp(Request);
        }



        public ExecuteViewModel Request
        {
            get => _request;
            set => Set(ref _request, value);
        }



        public void ExecuteRequest()
        {
            //todo send logic
            Request = new ExecuteViewModel();
            ActivateItem(Request);
        }
    }
}
