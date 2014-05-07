.class public abstract Lcom/android/settings/framework/preference/HtcAbsTogglePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbsTogglePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupHostRelationship;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustView:Landroid/view/View;

.field private mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

.field protected mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

.field private mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

.field private sSpecialLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->TAG:Ljava/lang/String;

    .line 65
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->onInitializeInForeground(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private static inflateDividerView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, 0x205

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 784
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 788
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 795
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 797
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 801
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getListItemDivider()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 803
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    return-object v2
.end method

.method private inflateInfoLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    .line 649
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 657
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    invoke-direct {v0, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 661
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 664
    .local v2, marginM1:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 665
    .local v3, marginM2:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 666
    .local v4, marginM3:I
    iget-boolean v5, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->sSpecialLayout:Z

    if-nez v5, :cond_0

    .line 667
    invoke-virtual {v1, v2, v4, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 674
    :goto_0
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 677
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 679
    return-object v1

    .line 670
    :cond_0
    invoke-virtual {v1, v3, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "context"

    .prologue
    .line 607
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 613
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 617
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 621
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    const-string v2, "HtcListItemHeight"

    invoke-static {p1, v2}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 628
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 631
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 633
    return-object v1
.end method

.method private inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .parameter "context"

    .prologue
    .line 740
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 745
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 749
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 753
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 755
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 759
    :cond_0
    const v2, 0x2030042

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 762
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 765
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 767
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    return-object v1
.end method

.method private inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 694
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 699
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 703
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 708
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 711
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 714
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 717
    const v2, 0x2030037

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 719
    iget-boolean v2, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 721
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 724
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    return-object v1
.end method

.method private static inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 4
    .parameter "context"

    .prologue
    .line 819
    new-instance v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 823
    .local v1, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setId(I)V

    .line 827
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 833
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 836
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setFocusable(Z)V

    .line 839
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setClickable(Z)V

    .line 841
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    return-object v1
.end method

.method private initCustView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .parameter "context"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, locale:Ljava/lang/String;
    const-string v7, "iw"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ar"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "fa"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->sSpecialLayout:Z

    .line 133
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 134
    .local v0, container:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->inflateInfoLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 135
    .local v2, infoContainer:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    .line 136
    .local v5, titleTextView:Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 137
    .local v4, summaryTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->inflateDividerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, dividerView:Landroid/view/View;
    invoke-static {p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v6

    .line 140
    .local v6, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    iget-boolean v7, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->sSpecialLayout:Z

    if-eqz v7, :cond_3

    .line 149
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    :goto_1
    iput-object v6, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 178
    iget-object v7, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v7, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 180
    return-object v0

    .line 130
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #dividerView:Landroid/view/View;
    .end local v2           #infoContainer:Landroid/widget/LinearLayout;
    .end local v4           #summaryTextView:Landroid/widget/TextView;
    .end local v5           #titleTextView:Landroid/widget/TextView;
    .end local v6           #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->sSpecialLayout:Z

    goto :goto_0

    .line 166
    .restart local v0       #container:Landroid/widget/LinearLayout;
    .restart local v1       #dividerView:Landroid/view/View;
    .restart local v2       #infoContainer:Landroid/widget/LinearLayout;
    .restart local v4       #summaryTextView:Landroid/widget/TextView;
    .restart local v5       #titleTextView:Landroid/widget/TextView;
    .restart local v6       #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private final initializeInBackground()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->initializeInBackground()V

    .line 271
    return-void
.end method

.method private onInitializeInBackground(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 379
    check-cast v0, Ljava/lang/String;

    .end local v0           #text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setKey(Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 385
    .restart local v0       #text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 394
    :cond_2
    return-void
.end method

.method private onInitializeInForeground(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setPersistent(Z)V

    .line 365
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->initCustView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mCustView:Landroid/view/View;

    .line 366
    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method private setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    return-void
.end method

.method private setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    return-void
.end method

.method private startIntent()V
    .locals 5

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v1

    .line 462
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    move-result-object v0

    .line 464
    .local v0, actionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    if-nez v0, :cond_0

    .line 465
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 470
    :cond_0
    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    if-ne v0, v2, :cond_1

    .line 471
    const-string v2, ":android:show_fragment_title"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomTitleRes()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    .line 482
    .end local v0           #actionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    :goto_0
    return-void

    .line 479
    :cond_2
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The intent of the preference ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final syncStateFromDataSourceInBackground()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 343
    return-void
.end method

.method private final syncStateToDataSourceInBackground(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueToDataSourceInBackground(Ljava/lang/Object;)V

    .line 353
    return-void
.end method


# virtual methods
.method protected abstract getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract getCustomTitleRes()I
.end method

.method public getHost()Lcom/android/settings/framework/app/HtcIInternalHost;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    return-object v0
.end method

.method public getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-object v0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1
    .parameter "button"
    .parameter "state"

    .prologue
    .line 424
    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->syncStateToDataSourceInBackground(Z)V

    .line 426
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    .line 427
    .local v0, text:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 428
    if-eqz p2, :cond_2

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 434
    :cond_0
    :goto_1
    return-void

    .line 426
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 431
    .restart local v0       #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected final onClick()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->startIntent()V

    .line 442
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "group"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mCustView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->initCustView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mCustView:Landroid/view/View;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mCustView:Landroid/view/View;

    return-object v0
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 491
    instance-of v0, p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    if-eqz v0, :cond_0

    .line 492
    check-cast p1, Lcom/android/settings/framework/app/HtcIInternalHost;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setHandlers(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 496
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->initializeInBackground()V

    .line 497
    return-void
.end method

.method protected abstract onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 542
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v3

    .line 545
    .local v3, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v3, :cond_0

    .line 546
    const/4 v5, 0x0

    .line 591
    :goto_0
    return v5

    .line 549
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 591
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 551
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->onInitializeInBackground(Landroid/content/Context;)V

    goto :goto_1

    .line 555
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 559
    .local v0, checked:Ljava/lang/Boolean;
    if-eqz v0, :cond_4

    .line 560
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomSummaryOn()Ljava/lang/CharSequence;

    move-result-object v4

    .line 564
    .local v4, text:Ljava/lang/CharSequence;
    :goto_2
    if-eqz v4, :cond_1

    .line 565
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 566
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 563
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getCustomSummaryOff()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .line 568
    .restart local v4       #text:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 572
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_4
    sget-boolean v5, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 573
    sget-object v5, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve a remote data source."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v5, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    goto :goto_1

    .line 580
    .end local v0           #checked:Ljava/lang/Boolean;
    :pswitch_2
    iget-object v5, v3, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 581
    .local v2, newState:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->onSetValueInBackground(Landroid/content/Context;Z)Z

    move-result v1

    .line 586
    .local v1, isSuccessful:Z
    if-nez v1, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->syncStateFromDataSourceInBackground()V

    goto :goto_1

    .line 549
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 502
    invoke-static {p1, p0}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;->getMessageParcel(Landroid/os/Message;Ljava/lang/Object;)Lcom/android/settings/framework/os/HtcMessageParcel;

    move-result-object v0

    .line 505
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    if-nez v0, :cond_0

    .line 506
    const/4 v1, 0x0

    .line 536
    :goto_0
    return v1

    .line 509
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 536
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 511
    :sswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 515
    :sswitch_1
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 519
    :sswitch_2
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 523
    :sswitch_3
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 528
    :sswitch_4
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setChecked(Z)V

    goto :goto_1

    .line 533
    :sswitch_5
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setEnabled(Z)V

    goto :goto_1

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x19 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->syncStateFromDataSourceInBackground()V

    .line 399
    return-void
.end method

.method protected abstract onSetValueInBackground(Landroid/content/Context;Z)Z
.end method

.method public final setCheckedInForeground(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setCheckedInForeground(Z)V

    .line 325
    return-void
.end method

.method public final setEnabledInForeground(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setEnabledInForeground(Z)V

    .line 335
    return-void
.end method

.method public setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 108
    return-void
.end method

.method public final setSummaryInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public final setSummaryOffInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOff"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method public final setSummaryOnInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summaryOn"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 304
    return-void
.end method

.method public final setTitleInForeground(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method
