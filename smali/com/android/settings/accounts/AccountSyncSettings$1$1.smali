.class Lcom/android/settings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Thread;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v1, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #calls: Lcom/android/settings/accounts/AccountSyncSettings;->removeAccount()V
    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$100(Lcom/android/settings/accounts/AccountSyncSettings;)V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
