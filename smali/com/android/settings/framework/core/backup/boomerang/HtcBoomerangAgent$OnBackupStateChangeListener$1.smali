.class Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener$1;
.super Landroid/database/ContentObserver;
.source "HtcBoomerangAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener$1;->this$0:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener$1;->this$0:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->onBackupStateChange(ZLandroid/net/Uri;)V

    .line 76
    return-void
.end method
