.class Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;
.super Ljava/lang/Object;
.source "WifiSettingsSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsSetupWizard;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
