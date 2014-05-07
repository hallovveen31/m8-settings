.class Lcom/android/settings/applications/ManageApplicationsFragment$1;
.super Ljava/lang/Object;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$1;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$1;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->handleRunningProcessesAvail()V

    .line 292
    return-void
.end method
