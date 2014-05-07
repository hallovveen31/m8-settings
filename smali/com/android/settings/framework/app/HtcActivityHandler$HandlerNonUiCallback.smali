.class Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerNonUiCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/android/settings/framework/app/HtcActivityHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    return-void
.end method

.method private handleExternalNonUiMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    .line 1026
    const/4 v4, 0x0

    .line 1027
    .local v4, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const/4 v1, 0x0

    .line 1030
    .local v1, handled:Z
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1034
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1035
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 1036
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1038
    .local v0, callback:Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v5, :cond_0

    .line 1044
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    .end local v0           #callback:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onHandleNonUiMessage(Landroid/os/Message;)Z

    move-result v1

    .line 1035
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_1
    return v1
.end method

.method private handleInternalNonUiMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 960
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    .line 961
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;
    iget-object v0, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->callback:Ljava/lang/Object;

    .line 964
    .local v0, callback:Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1010
    .end local v0           #callback:Ljava/lang/Object;
    :goto_0
    return-void

    .line 966
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_0
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;->onResumeInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_1
    move-object v2, v0

    .line 970
    check-cast v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;->onPostResumeInBackground(Landroid/app/Activity;)V

    .line 973
    :pswitch_2
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;->onDisplayInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .line 977
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;->onPauseInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .line 981
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_4
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;->onRestartInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .line 985
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_5
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;->onStartInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .line 989
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;->onStopInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .line 993
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v3, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;->onCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 997
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v3, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;->onPostCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1001
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;->onDestroyInBackground(Landroid/app/Activity;)V

    goto :goto_0

    .line 1005
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;->onActivityResultInBackground(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 917
    .local v0, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    if-eqz v1, :cond_1

    .line 924
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->handleInternalNonUiMessage(Landroid/os/Message;)V

    .line 956
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 935
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->handleExternalNonUiMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcIInternalHost;->onHandleNonUiMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
