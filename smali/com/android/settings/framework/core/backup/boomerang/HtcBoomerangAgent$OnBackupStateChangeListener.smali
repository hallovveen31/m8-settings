.class public abstract Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;
.super Ljava/lang/Object;
.source "HtcBoomerangAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnBackupStateChangeListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener$1;-><init>(Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->mObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object p1, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract onBackupStateChange(ZLandroid/net/Uri;)V
.end method

.method public registerListener()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->access$000()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "current_state"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    return-void
.end method
