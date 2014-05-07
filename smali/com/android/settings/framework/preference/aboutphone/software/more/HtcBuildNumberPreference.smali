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

    .prologue
    .line 30
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 7

    .prologue
    .line 96
    const-string v2, "ro.build.description"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, buildNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAppVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

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

    .line 104
    .local v0, buildDate:Ljava/lang/CharSequence;
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

    .line 106
    .end local v0           #buildDate:Ljava/lang/CharSequence;
    .end local v1           #buildNumber:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 77
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    :goto_0
    return v1

    .line 131
    :cond_0
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-lez v3, :cond_5

    .line 132
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    .line 133
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-nez v3, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

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

    .line 137
    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b49

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    .line 142
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.settings.ENTRY_DATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #updateIntent:Landroid/content/Intent;
    :cond_2
    :goto_1
    move v1, v2

    .line 167
    goto :goto_0

    .line 148
    :cond_3
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 150
    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

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

    .line 156
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 158
    :cond_5
    iget v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitCountdown:I

    if-gez v3, :cond_2

    .line 159
    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_6

    .line 160
    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 162
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b4a

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    .line 164
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onResumeInBackground(Landroid/app/Activity;)V

    .line 113
    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;->mDevHitToast:Landroid/widget/Toast;

    .line 117
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
