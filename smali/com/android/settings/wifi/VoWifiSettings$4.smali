.class Lcom/android/settings/wifi/VoWifiSettings$4;
.super Ljava/lang/Object;
.source "VoWifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/VoWifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/VoWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/VoWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$4;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings$4;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/VoWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 461
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 462
    const v1, 0x7f0c0d92

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 466
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method
