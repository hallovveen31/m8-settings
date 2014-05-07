.class Lcom/android/settings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ALL_SIZES_COMPUTED:I = 0x5

.field static final MSG_PACKAGE_ICON_CHANGED:I = 0x3

.field static final MSG_PACKAGE_LIST_CHANGED:I = 0x2

.field static final MSG_PACKAGE_SIZE_CHANGED:I = 0x4

.field static final MSG_REBUILD_COMPLETE:I = 0x1

.field static final MSG_RUNNING_STATE_CHANGED:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    goto :goto_0

    .line 368
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    goto :goto_0

    .line 378
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
