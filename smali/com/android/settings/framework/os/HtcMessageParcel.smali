.class public Lcom/android/settings/framework/os/HtcMessageParcel;
.super Ljava/lang/Object;
.source "HtcMessageParcel.java"


# instance fields
.field public args:Ljava/lang/Object;

.field public callStack:Ljava/lang/String;

.field public id:Ljava/lang/Object;

.field public localId:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->localId:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fillInCallStack()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/os/HtcMessageParcel;->fillInCallStack(Ljava/lang/String;)V

    return-void
.end method

.method public fillInCallStack(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getCallStack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->callStack:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
