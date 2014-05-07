.class public Lcom/android/settings/framework/app/HtcActivityCallbackProxy;
.super Ljava/lang/Object;
.source "HtcActivityCallbackProxy.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;


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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->enableStickyCallbackWarning:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->CREATOR_LOCKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;-><init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy;Ljava/lang/Class;Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 0
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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;)V

    iput-object p4, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dumpWarningLog(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "The invocation of instantiating the call-back class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "blocked the delegation of the call-back event.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "still unknown"

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

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

    return-void
.end method

.method private onHandleInternalNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)Z
    .locals 4

    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_1

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForCallbackInstance(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    if-eqz v2, :cond_2

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

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->getCallbackInstanceType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Not compatible!"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->CREATOR_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-eqz v0, :cond_4

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mPreChecker:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->createCallbackInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    sget-boolean v0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->DEBUG:Z

    if-eqz v0, :cond_7

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

    :cond_7
    monitor-exit v2

    move v0, v1

    goto :goto_0

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

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;->createCallbackInstance()Ljava/lang/Object;

    move-result-object v0

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

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mFactory:Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;->getCallbackInstanceType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onActivityResultInBackground(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;->onActivityResultInBackground(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;->onCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;->onDestroy(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;->onDestroyInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mUiHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public onDisplay(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayListener;->onDisplay(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onDisplayInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnDisplayInBackgroundListener;->onDisplayInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 2

    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onHandleNonUiMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->onHandleInternalNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)Z

    move-result v1

    goto :goto_0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onHandleUiMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;->onPause(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;->onPauseInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;->onPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onPostCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;->onPostCreateInBackground(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onPostResume(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;->onPostResume(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onPostResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;->onPostResumeInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;->onRestart(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onRestartInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;->onRestartInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;->onResume(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;->onResumeInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;->onStart(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onStartInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;->onStartInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->ENABLE_CALLBACK_WARNING:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->dumpWarningLog(Ljava/lang/Class;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    invoke-interface {v1, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;->onStop(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onStopInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mHasCreated:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->waitForCallbackInstance(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    invoke-interface {v0, p1}, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;->onStopInBackground(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
