.class Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;
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
    name = "HandlerUiCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/android/settings/framework/app/HtcActivityHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    return-void
.end method

.method private handleExternalUiMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 888
    const/4 v1, 0x0

    .line 891
    .local v1, handled:Z
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 895
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 896
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 897
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbackPool:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$400(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 899
    .local v0, callback:Ljava/lang/Object;
    instance-of v4, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v4, :cond_0

    .line 900
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    .end local v0           #callback:Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onHandleUiMessage(Landroid/os/Message;)Z

    move-result v1

    .line 896
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 905
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_1
    return v1
.end method

.method private handleInternalUiMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 829
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    .line 830
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;
    iget-object v0, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->callback:Ljava/lang/Object;

    .line 833
    .local v0, callback:Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 872
    .end local v0           #callback:Ljava/lang/Object;
    :goto_0
    return-void

    .line 835
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_0
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 838
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_1
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;->onPostResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 841
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_2
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;->onDisplay(Landroid/app/Activity;)V

    goto :goto_0

    .line 844
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 847
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_4
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;->onRestart(Landroid/app/Activity;)V

    goto :goto_0

    .line 850
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_5
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 853
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 856
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v3, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 860
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v3, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;->onPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 864
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 867
    .restart local v0       #callback:Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    .end local v0           #callback:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$300(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;->args:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 833
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
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 806
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityHandler$CallbackParcel;

    if-eqz v0, :cond_1

    .line 809
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->handleInternalUiMessage(Landroid/os/Message;)V

    .line 825
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 814
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->handleExternalUiMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUiCallback;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcIInternalHost;->onHandleUiMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
