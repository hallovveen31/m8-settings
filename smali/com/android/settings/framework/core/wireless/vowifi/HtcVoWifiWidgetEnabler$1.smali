.class Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;
.super Landroid/database/ContentObserver;
.source "HtcVoWifiWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->getWFCState()I
    invoke-static {v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;)I

    move-result v0

    .line 83
    .local v0, state:I
    invoke-static {}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFC DB state is changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(I)V

    .line 85
    return-void
.end method
