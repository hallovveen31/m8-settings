.class public Lcom/android/settings/framework/core/storage/HtcStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "HtcStorageEventListener.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;,
        Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

.field private mRegistered:Z

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mRegistered:Z

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$1;-><init>(Lcom/android/settings/framework/core/storage/HtcStorageEventListener;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/storage/HtcStorageEventListener;)Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mOnStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

    return-object v0
.end method


# virtual methods
.method public onStart(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->registerListener()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->unregisterListener()V

    return-void
.end method

.method public final registerListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mRegistered:Z

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    goto :goto_0
.end method

.method public setOnStorageEventListener(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mOnStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

    return-void
.end method

.method public final unregisterListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mRegistered:Z

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    goto :goto_0
.end method
