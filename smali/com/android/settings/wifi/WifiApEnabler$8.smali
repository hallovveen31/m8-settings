.class Lcom/android/settings/wifi/WifiApEnabler$8;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$8;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$8;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #calls: Lcom/android/settings/wifi/WifiApEnabler;->setHotspotStatus()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApEnabler;->access$800(Lcom/android/settings/wifi/WifiApEnabler;)V

    .line 422
    return-void
.end method