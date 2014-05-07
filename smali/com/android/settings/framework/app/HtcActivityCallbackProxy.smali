.class public Lcom/android/settings/framework/app/HtcActivityCallbackProxy;
.super Ljava/lang/Object;
.source "HtcActivityCallbackProxy.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;,
        Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;
    }
.end annotation


# static fields
.field private static final CREATOR_LOCKER:Ljava/lang/Object; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_CALLBACK_WARNING:Z = false

.field private static final MESSAGE_ON_CREATE_CALLBACK_INSTANCE:I = 0x1001

.field private static final MESSAGE_ON_DISPATCH_HANDLERS:I = 0x1002

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Ljava/lang/Object;

.field private mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

.field private mHasCreated:Z

.field private mNonUiHandler:Landroid/os/Handler;

.field private mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    .line 74
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->enableStickyCallbackWarning:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->CREATOR_LOCKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 141
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    .line 144
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;)V
    .locals 1
    .parameter "context"
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/preference/HtcPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, preferenceCallback:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/preference/HtcPreference;>;"
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 141
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    .line 144
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    .line 217
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;-><init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy;Ljava/lang/Class;Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 0
    .parameter "context"
    .parameter "container"
    .parameter
    .parameter "preChecker"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/preference/HtcPreference;",
            ">;",
            "Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, preferenceCallback:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/preference/HtcPreference;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;)V

    .line 265
    iput-object p4, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 141
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    .line 144
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    .line 177
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 1
    .parameter "factory"
    .parameter "preChecker"

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 141
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    .line 144
    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    .line 186
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    .line 187
    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    .line 188
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dumpWarningLog(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, delegatedEvent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v1, "The invocation of instantiating the call-back class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v1, "blocked the delegation of the call-back event.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - callback class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - callback instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    .line 812
    return-void

    .line 805
    :cond_0
    const-string v1, "still unknown"

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 795
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method private onHandleInternalNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)Z
    .locals 4
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 769
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 771
    .local v0, activity:Landroid/app/Activity;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 791
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 773
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    goto :goto_0

    .line 777
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_1

    .line 778
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForCallbackInstance(Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, lifecycleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 314
    iget-boolean v2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-eqz v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isAssignableFrom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->getCallbackInstanceType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->log(Ljava/lang/String;)V

    .line 323
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->getCallbackInstanceType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 328
    const-string v1, "Not compatible!"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    sget-object v2, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->CREATOR_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-eqz v0, :cond_4

    .line 336
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->createCallbackInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    .line 346
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    .line 347
    sget-boolean v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# CREATE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->log(Ljava/lang/String;)V

    .line 350
    :cond_7
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected createCallbackInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;->createCallbackInstance()Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallbackInstanceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;->getCallbackInstanceType()Ljava/lang/Class;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 535
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 536
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 540
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 541
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 545
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 549
    :cond_1
    return-void
.end method

.method public onActivityResultInBackground(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 690
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;->onActivityResultInBackground(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 699
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 359
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 360
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 364
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 365
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 371
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 375
    :cond_1
    return-void
.end method

.method public onCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 558
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;->onCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 566
    :cond_1
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 517
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 518
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 522
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 523
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 527
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;->onDestroy(Landroid/app/Activity;)V

    .line 530
    :cond_1
    return-void
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 676
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;->onDestroyInBackground(Landroid/app/Activity;)V

    .line 684
    :cond_1
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 710
    :cond_0
    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mUiHandler:Landroid/os/Handler;

    .line 711
    iput-object p3, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    .line 714
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 721
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 727
    :cond_1
    return-void
.end method

.method public onDisplay(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 466
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 467
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 471
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 472
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 476
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;->onDisplay(Landroid/app/Activity;)V

    .line 479
    :cond_1
    return-void
.end method

.method public onDisplayInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 637
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;->onDisplayInBackground(Landroid/app/Activity;)V

    .line 645
    :cond_1
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 747
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 750
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_2

    .line 751
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 752
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onHandleNonUiMessage(Landroid/os/Message;)Z

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 761
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 764
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->onHandleInternalNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)Z

    move-result v1

    goto :goto_0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 732
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onHandleUiMessage(Landroid/os/Message;)Z

    move-result v0

    .line 741
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 484
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 488
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 489
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 493
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;->onPause(Landroid/app/Activity;)V

    .line 496
    :cond_1
    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 650
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;->onPauseInBackground(Landroid/app/Activity;)V

    .line 658
    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 380
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 381
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 385
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 386
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 390
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;->onPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 394
    :cond_1
    return-void
.end method

.method public onPostCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 572
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;->onPostCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 580
    :cond_1
    return-void
.end method

.method public onPostResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 449
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 450
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 454
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 455
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 459
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;->onPostResume(Landroid/app/Activity;)V

    .line 462
    :cond_1
    return-void
.end method

.method public onPostResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 624
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;->onPostResumeInBackground(Landroid/app/Activity;)V

    .line 632
    :cond_1
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 415
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 416
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 420
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 421
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 425
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;->onRestart(Landroid/app/Activity;)V

    .line 428
    :cond_1
    return-void
.end method

.method public onRestartInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 598
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;->onRestartInBackground(Landroid/app/Activity;)V

    .line 606
    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 432
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 433
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 437
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 438
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 442
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;->onResume(Landroid/app/Activity;)V

    .line 445
    :cond_1
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 611
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;->onResumeInBackground(Landroid/app/Activity;)V

    .line 619
    :cond_1
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 398
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 399
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 403
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 404
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 408
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;->onStart(Landroid/app/Activity;)V

    .line 411
    :cond_1
    return-void
.end method

.method public onStartInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 585
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;->onStartInBackground(Landroid/app/Activity;)V

    .line 593
    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 500
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    .line 501
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    .line 505
    .local v0, wait:Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    .line 506
    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    .line 510
    .end local v0           #wait:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;->onStop(Landroid/app/Activity;)V

    .line 513
    :cond_1
    return-void
.end method

.method public onStopInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    .line 663
    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;->onStopInBackground(Landroid/app/Activity;)V

    .line 671
    :cond_1
    return-void
.end method
