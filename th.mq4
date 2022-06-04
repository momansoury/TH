//+------------------------------------------------------------------+
//|                                                           th.mq4 |
//|                                                              NEO |
//|                                           Neo.Reverser@gmail.com |
//+------------------------------------------------------------------+
#property copyright "NEO"
#property link      "Neo.Reverser@gmail.com"
#property version   "1.00"
#property strict
#property indicator_chart_window

#include <forall.mqh>

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
   {
//--- indicator buffers mapping
//---
    return(INIT_SUCCEEDED);
   }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
   {
    Comment("");
   }

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
   {
    if(_Symbol == "BTCUSD")
       {
        Comment(NL, "#1m: ", TH(0.26, Close[0])
                , NL, "#5m: ", TH(0.55, Close[0])
                , NL, "#15m: ", TH(1.0, Close[0])
                , NL, "#1h: ", TH(2.0, Close[0])
                , NL, "#4h: ", TH(4.0, Close[0])
                , NL, "#1D: ", TH(10.0, Close[0])
                , NL, "#1W: ", TH(26.4, Close[0])
                , NL, "#1M: ", TH(54.7, Close[0]));
       }
    else
       {
        Comment(NL, "#1m: ", TH(0.026, Close[0])
                , NL, "#5m: ", TH(0.055, Close[0])
                , NL, "#15m: ", TH(0.10, Close[0])
                , NL, "#1h: ", TH(0.20, Close[0])
                , NL, "#4h: ", TH(0.40, Close[0])
                , NL, "#1D: ", TH(1.00, Close[0])
                , NL, "#1W: ", TH(2.64, Close[0])
                , NL, "#1M: ", TH(5.47, Close[0]));
       }
    return(rates_total);
   }
//+------------------------------------------------------------------+
