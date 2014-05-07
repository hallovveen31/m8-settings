.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method
