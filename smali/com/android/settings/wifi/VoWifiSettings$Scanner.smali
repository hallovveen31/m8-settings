.class Lcom/android/settings/wifi/VoWifiSettings$Scanner;
.super Landroid/os/Handler;
.source "VoWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/VoWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/VoWifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/VoWifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1733
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/VoWifiSettings;Lcom/android/settings/wifi/VoWifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/VoWifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1742
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->removeMessages(I)V

    .line 1743
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 1744
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1753
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/VoWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1754
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    #calls: Lcom/android/settings/wifi/VoWifiSettings;->updateScanningCursor(Z)V
    invoke-static {v1, v4}, Lcom/android/settings/wifi/VoWifiSettings;->access$000(Lcom/android/settings/wifi/VoWifiSettings;Z)V

    .line 1755
    iput v3, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->mRetry:I

    .line 1765
    :cond_0
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 1766
    :cond_1
    :goto_0
    return-void

    .line 1756
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1757
    iput v3, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->mRetry:I

    .line 1758
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1759
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1760
    const v1, 0x7f0c0d33

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1747
    iput v0, p0, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->mRetry:I

    .line 1748
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->removeMessages(I)V

    .line 1749
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/VoWifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 1739
    :cond_0
    return-void
.end method
