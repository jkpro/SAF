using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SignalrClient.ViewModels
{
    public class ExecuteViewModel : PropertyChangedBase
    {
        public ExecuteViewModel()
        {
            Params = new BindableCollection<ExecuteParamViewModel>();
        }

        private string _methodName;
        private BindableCollection<ExecuteParamViewModel> _params;

        public string MethodName
        {
            get => _methodName;
            set => Set(ref _methodName, value);
        }

        public BindableCollection<ExecuteParamViewModel> Params
        {
            get => _params;
            set => Set(ref _params, value);
        }
    }

    public class ExecuteParamViewModel : PropertyChangedBase
    {
        public Type Type { get; set; }
        public string Value { get; set; }
    }
    
}
