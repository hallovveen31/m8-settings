.class public Lcom/android/settings/framework/content/HtcRegister;
.super Ljava/lang/Object;
.source "HtcRegister.java"

# interfaces
.implements Lcom/android/settings/framework/content/HtcIRegister;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field protected final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/HtcRegister;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcRegister;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/content/HtcRegister;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 24
    iput-boolean v2, p0, Lcom/android/settings/framework/content/HtcRegister;->DEBUG:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/settings/framework/content/HtcRegister;->mRegistered:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mEnabled:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    .line 47
    iput-object p1, p0, Lcom/android/settings/framework/content/HtcRegister;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/content/HtcRegister;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 24
    iput-boolean v2, p0, Lcom/android/settings/framework/content/HtcRegister;->DEBUG:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/settings/framework/content/HtcRegister;->mRegistered:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mEnabled:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    .line 55
    iput-object p1, p0, Lcom/android/settings/framework/content/HtcRegister;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    .line 57
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public final register()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mEnabled:Z

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mRegistered:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mRegistered:Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;->onRegister()V

    goto :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings/framework/content/HtcRegister;->mEnabled:Z

    .line 103
    return-void
.end method

.method public final unregister()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mRegistered:Z

    if-nez v0, :cond_1

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mRegistered:Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/framework/content/HtcRegister;->mListener:Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;->onUnregister()V

    goto :goto_0
.end method
