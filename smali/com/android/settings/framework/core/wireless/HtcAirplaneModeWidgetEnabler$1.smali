.class Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;
.super Ljava/lang/Object;
.source "HtcAirplaneModeWidgetEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onAirplaneModeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;)V

    return-void
.end method
