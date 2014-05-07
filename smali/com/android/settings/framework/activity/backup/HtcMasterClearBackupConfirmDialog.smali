.class public Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;
.super Lcom/android/settings/framework/app/HtcInternalDialogFragment;
.source "HtcMasterClearBackupConfirmDialog.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomMessage()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getLastBackupTime(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    .line 47
    .local v0, backUpTime:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 50
    invoke-static {v1, v0}, Lcom/android/settings/framework/util/HtcDateTimeUtil;->formatDateAndTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, messageTimePart:Ljava/lang/String;
    const v4, 0x7f0c01ad

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .end local v3           #messageTimePart:Ljava/lang/String;
    .local v2, message:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 58
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0c01ac

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method protected getCustomMessageRes()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomNegativeButtonLabelRes()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0c01af

    return v0
.end method

.method protected getCustomPositiveButtonLabelRes()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0c01ae

    return v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0c01ab

    return v0
.end method

.method protected onNegativeButtonClick()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected onPositiveButtonClick()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected supportNegativeButton()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected supportPositiveButton()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
