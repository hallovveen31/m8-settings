.class Lcom/android/settings/AccountPreference$4$1;
.super Ljava/lang/Thread;
.source "AccountPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccountPreference$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AccountPreference$4;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountPreference$4;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/settings/AccountPreference$4$1;->this$1:Lcom/android/settings/AccountPreference$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/AccountPreference$4$1;->this$1:Lcom/android/settings/AccountPreference$4;

    iget-object v0, v0, Lcom/android/settings/AccountPreference$4;->this$0:Lcom/android/settings/AccountPreference;

    iget-object v1, v0, Lcom/android/settings/AccountPreference;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference$4$1;->this$1:Lcom/android/settings/AccountPreference$4;

    iget-object v0, v0, Lcom/android/settings/AccountPreference$4;->this$0:Lcom/android/settings/AccountPreference;

    #calls: Lcom/android/settings/AccountPreference;->removeAccount()V
    invoke-static {v0}, Lcom/android/settings/AccountPreference;->access$1100(Lcom/android/settings/AccountPreference;)V

    .line 543
    monitor-exit v1

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
