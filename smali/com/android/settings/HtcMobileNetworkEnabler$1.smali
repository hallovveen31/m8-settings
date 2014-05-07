.class Lcom/android/settings/HtcMobileNetworkEnabler$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcMobileNetworkEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcMobileNetworkEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcMobileNetworkEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcMobileNetworkEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/HtcMobileNetworkEnabler$1;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    .line 117
    const-string v0, "HtcMobileNetworkEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter mMobileDataStateListener\'s onServiceStateChanged(): phoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,the serviceState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler$1;->this$0:Lcom/android/settings/HtcMobileNetworkEnabler;

    #calls: Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkDisplayPolicy()V
    invoke-static {v0}, Lcom/android/settings/HtcMobileNetworkEnabler;->access$000(Lcom/android/settings/HtcMobileNetworkEnabler;)V

    .line 119
    return-void
.end method
