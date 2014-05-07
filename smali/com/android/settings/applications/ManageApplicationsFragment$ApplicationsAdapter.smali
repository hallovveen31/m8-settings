.class Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mLastFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private mSearchTextBackgroundColor:I

.field private mSearchTextForegroundColor:I

.field private final mState:Lcom/android/settings/applications/ApplicationsState;

.field private mWaitingForData:Z

.field private mWhichSize:I

.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment;Lcom/android/settings/applications/ApplicationsState;)V
    .locals 4

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    new-instance v0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextForegroundColor:I

    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "text_selection_color"

    const v3, 0x2060004

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextBackgroundColor:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v7}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/settings/applications/HtcPackageBlocker;->applyBlockedFilter(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v3, p2

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, -0x1

    if-le v2, v7, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_1

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1200(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400a3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;

    invoke-direct {v3}, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;-><init>()V

    const v8, 0x7f090008

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    const v8, 0x7f090010

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v8, 0x7f09004d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const v8, 0x7f090150

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    instance-of v8, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v8, :cond_0

    move-object v8, p2

    check-cast v8, Lcom/htc/widget/HtcListItem;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    :try_start_0
    iput-object v2, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/text/SpannableString;

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, -0x1

    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, -0x1

    if-le v4, v8, :cond_2

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextForegroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v9, v5, v4

    const/16 v10, 0x21

    invoke-virtual {v1, v8, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextBackgroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v9, v5, v4

    const/16 v10, 0x21

    invoke-virtual {v1, v8, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, v2}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v9, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v3, v8, v9}, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->updateSizeText(Lcom/android/settings/applications/ManageApplicationsFragment;I)V

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x80

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const v9, 0x7f0c0f83

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(I)V

    :goto_3
    iget v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v9}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "icon_indicator_connected"

    const v11, 0x7f020126

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v9}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setColorFilterEnabled(Landroid/content/Context;Z)V

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mIsAlignLastControl:Z
    invoke-static {v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    instance-of v8, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v8, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_5
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_6
    :try_start_2
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v9, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_8

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const v9, 0x7f0c0f82

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(I)V

    goto :goto_3

    :cond_8
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    const/16 v8, 0x8

    goto :goto_4

    :cond_a
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public onAllSizesComputed()V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->updateSizeText(Lcom/android/settings/applications/ManageApplicationsFragment;I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1100(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->getLoadingVisibility()I
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1000(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    const/16 v1, 0x8

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWaitingForData:Z

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    :cond_0
    return-void
.end method

.method public rebuild(II)V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v1, "rebuild list for cache"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    iput p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "Rebuilding app list..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v4

    if-nez v4, :cond_3

    iput v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    :goto_0
    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    packed-switch v6, :pswitch_data_0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v6, :pswitch_data_1

    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    :goto_2
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v6, v2, v0}, Lcom/android/settings/applications/ApplicationsState;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    :cond_2
    :goto_3
    return-void

    :cond_3
    iput v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    if-ne v8, v4, :cond_1

    iput v10, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    :pswitch_2
    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    packed-switch v6, :pswitch_data_2

    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    if-nez v1, :cond_6

    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWaitingForData:Z

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z
    invoke-static {v6, v9}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v6, v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$302(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6, v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    iget v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "entries is null, resend MSG_APPLICATIONSTATE_REBUILD to rebuild list"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$700(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v6

    if-ne v6, v8, :cond_7

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Downloaded"

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "Response Time (Application manager (Apps))"

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->launchFinish(Ljava/lang/String;)V

    :cond_8
    :goto_5
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    const/16 v7, 0x8

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z
    invoke-static {v6, v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "the showed data is cached"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6, v9}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_b

    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "send MSG_RESUME_ADAPTER to update cache data"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v3, v10, v8, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget-object v6, v6, Lcom/android/settings/applications/ManageApplicationsFragment;->mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget-object v7, v7, Lcom/android/settings/applications/ManageApplicationsFragment;->mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    const-string v6, "All"

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "Response Time (Apps All tab)"

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string v6, "OnSdCard"

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Response Time (Apps On phone storage tab)"

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(II)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    sget-boolean v1, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume!  mResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v2, "use cache to show data"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v1, v4}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$302(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v1, v4}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    invoke-static {v0, v5, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v1, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v2, "send MSG_APPLICATIONSTATE_REBUILD to rebuild list"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/ApplicationsState;->resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    iput p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v5, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
