.class Lcom/android/settings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    #getter for: Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v1}, Lcom/android/settings/DevelopmentSettings;->access$000(Lcom/android/settings/DevelopmentSettings;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    .line 691
    .local v0, b:Z
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/android/settings/DevelopmentSettings;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DevelopmentSettings$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/DevelopmentSettings$1$1;-><init>(Lcom/android/settings/DevelopmentSettings$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0           #b:Z
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v1

    goto :goto_0
.end method
