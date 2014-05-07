.class Lcom/android/settings/wifi/WifiOffloadSettings$1;
.super Ljava/lang/Object;
.source "WifiOffloadSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadSettings;

    #calls: Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiOffloadSettings;->access$000(Lcom/android/settings/wifi/WifiOffloadSettings;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadSettings;->finish()V

    .line 78
    return-void
.end method
