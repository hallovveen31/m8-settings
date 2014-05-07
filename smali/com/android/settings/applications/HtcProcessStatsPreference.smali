.class public Lcom/android/settings/applications/HtcProcessStatsPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcProcessStatsPreference.java"


# instance fields
.field private mBar:Lcom/htc/widget/HtcProgressBar;

.field private final mEntry:Lcom/android/settings/applications/ProcStatsEntry;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconView:Lcom/htc/widget/HtcListItemColorIcon;

.field private mProgress:I

.field private mProgressText:Ljava/lang/String;

.field private mProgressView:Lcom/htc/widget/HtcListItem1LineTextProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 1
    .parameter "context"
    .parameter "icon"
    .parameter "entry"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p3, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    .line 43
    const v0, 0x7f0400e8

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setLayoutResource(I)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settings/applications/ProcStatsEntry;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 64
    const v1, 0x7f0901e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 65
    .local v0, itemView:Lcom/htc/widget/HtcListItem;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 69
    :cond_0
    const v1, 0x7f0900d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    iput-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgressView:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    .line 71
    iget-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgressView:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcProgressBar;

    iput-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mBar:Lcom/htc/widget/HtcProgressBar;

    .line 72
    const v1, 0x7f090029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mIconView:Lcom/htc/widget/HtcListItemColorIcon;

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mIconView:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v2, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgressView:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    invoke-virtual {p0}, Lcom/android/settings/applications/HtcProcessStatsPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgressView:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    iget-object v2, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgressText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setStampText(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mBar:Lcom/htc/widget/HtcProgressBar;

    iget v2, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 78
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    return-void
.end method

.method public setPercent(DD)V
    .locals 6
    .parameter "percentOfWeight"
    .parameter "percentOfTime"

    .prologue
    .line 53
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgress:I

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c1289

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/HtcProcessStatsPreference;->mProgressText:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcProcessStatsPreference;->notifyChanged()V

    .line 57
    return-void
.end method
