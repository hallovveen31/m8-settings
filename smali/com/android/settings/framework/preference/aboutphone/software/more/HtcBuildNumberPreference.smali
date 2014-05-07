.class public Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcBuildNumberPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 7

    const-string v2, "ro.build.description"

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAppVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ro.build.date.utc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/util/HtcFormatter;->formatDate(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInBackground(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "development"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b49

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.settings.ENTRY_DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100002

    iget v6, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b4a

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onResumeInBackground(Landroid/app/Activity;)V

    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDeveloperFeatureFlags;->supportShowDeveloperByDefault()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    return-void

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
