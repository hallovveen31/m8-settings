.class final Lcom/android/settings/HarmanSettings$ServiceListener;
.super Ljava/lang/Object;
.source "HarmanSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HarmanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HarmanSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/HarmanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/HarmanSettings$ServiceListener;->this$0:Lcom/android/settings/HarmanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HarmanSettings;Lcom/android/settings/HarmanSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/HarmanSettings$ServiceListener;-><init>(Lcom/android/settings/HarmanSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 109
    invoke-static {}, Lcom/android/settings/HarmanSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "onServiceConnected()"

    #calls: Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->access$100(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HarmanSettings$ServiceListener;->this$0:Lcom/android/settings/HarmanSettings;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/settings/HarmanSettings;->access$202(Lcom/android/settings/HarmanSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 114
    iget-object v0, p0, Lcom/android/settings/HarmanSettings$ServiceListener;->this$0:Lcom/android/settings/HarmanSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/HarmanSettings;->access$302(Lcom/android/settings/HarmanSettings;Z)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/HarmanSettings$ServiceListener;->this$0:Lcom/android/settings/HarmanSettings;

    #calls: Lcom/android/settings/HarmanSettings;->syncLiveStageState()V
    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->access$400(Lcom/android/settings/HarmanSettings;)V

    .line 117
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 120
    invoke-static {}, Lcom/android/settings/HarmanSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "onServiceDisconnected()"

    #calls: Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->access$100(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HarmanSettings$ServiceListener;->this$0:Lcom/android/settings/HarmanSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/HarmanSettings;->access$302(Lcom/android/settings/HarmanSettings;Z)Z

    .line 129
    iget-object v0, p0, Lcom/android/settings/HarmanSettings$ServiceListener;->this$0:Lcom/android/settings/HarmanSettings;

    #calls: Lcom/android/settings/HarmanSettings;->syncLiveStageState()V
    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->access$400(Lcom/android/settings/HarmanSettings;)V

    .line 130
    return-void
.end method
