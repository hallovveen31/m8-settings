.class Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;
.super Landroid/database/ContentObserver;
.source "HtcAirplaneModeWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    const-string v1, "AirplaneModeObserver - onChange."

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$AirplaneModeObserver;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->access$200(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V

    .line 160
    return-void
.end method
