.class public abstract Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcAbsInstalledAppDetails.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected resetDataSizeLabel(Lcom/htc/widget/HtcListItem2LineText;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c02c2

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    :cond_0
    return-void
.end method

.method protected resetMoveButtonText(Landroid/widget/Button;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c02c1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
