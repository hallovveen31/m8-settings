.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;
.super Ljava/lang/Object;
.source "HtcTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mSubjectView:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;Lcom/htc/widget/HtcListItem2LineText;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;Lcom/htc/widget/HtcCheckBox;)Lcom/htc/widget/HtcCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object p1
.end method
