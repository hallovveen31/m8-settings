.class Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;
.implements Landroid/widget/AbsListView$RecyclerListener;


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
    .parameter
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 369
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 340
    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    .line 349
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 370
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 373
    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextForegroundColor:I

    .line 374
    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "text_selection_color"

    const v3, 0x2060004

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextBackgroundColor:I

    .line 376
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "prefix"
    .parameter
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

    .prologue
    .line 602
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/settings/applications/HtcPackageBlocker;->applyBlockedFilter(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 605
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v3, p2

    .line 623
    :cond_1
    return-object v3

    .line 608
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, prefixStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, spacePrefixStr:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v3, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 613
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 614
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, nlabel:Ljava/lang/String;
    const/4 v2, -0x1

    .line 616
    .local v2, index:I
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, -0x1

    if-le v2, v7, :cond_3

    .line 617
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 711
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

    .prologue
    .line 691
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

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x0

    .line 701
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
    .parameter "position"

    .prologue
    .line 716
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 729
    if-nez p2, :cond_1

    .line 730
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1200(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400a3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 734
    new-instance v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;

    invoke-direct {v3}, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;-><init>()V

    .line 735
    .local v3, holder:Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    const v8, 0x7f090008

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    .line 736
    const v8, 0x7f090010

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 737
    const v8, 0x7f09004d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 738
    const v8, 0x7f090150

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iput-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    .line 739
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 747
    :goto_0
    instance-of v8, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v8, :cond_0

    move-object v8, p2

    .line 748
    check-cast v8, Lcom/htc/widget/HtcListItem;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 752
    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 753
    .local v2, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    monitor-enter v2

    .line 754
    :try_start_0
    iput-object v2, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 755
    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 757
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

    .line 758
    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, targetText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, searchText:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 762
    .local v1, displayedString:Landroid/text/SpannableString;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 763
    .local v5, length:I
    const/4 v4, -0x1

    .line 764
    .local v4, index:I
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, -0x1

    if-le v4, v8, :cond_2

    .line 765
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextForegroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v9, v5, v4

    const/16 v10, 0x21

    invoke-virtual {v1, v8, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 767
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mSearchTextBackgroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v9, v5, v4

    const/16 v10, 0x21

    invoke-virtual {v1, v8, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 816
    .end local v1           #displayedString:Landroid/text/SpannableString;
    .end local v4           #index:I
    .end local v5           #length:I
    .end local v6           #searchText:Ljava/lang/String;
    .end local v7           #targetText:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 743
    .end local v2           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v3           #holder:Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;

    .restart local v3       #holder:Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    goto :goto_0

    .line 770
    .restart local v1       #displayedString:Landroid/text/SpannableString;
    .restart local v2       #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .restart local v4       #index:I
    .restart local v5       #length:I
    .restart local v6       #searchText:Ljava/lang/String;
    .restart local v7       #targetText:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 775
    .end local v1           #displayedString:Landroid/text/SpannableString;
    .end local v4           #index:I
    .end local v5           #length:I
    .end local v6           #searchText:Ljava/lang/String;
    .end local v7           #targetText:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, v2}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 776
    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    .line 777
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v9, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    :cond_4
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v3, v8, v9}, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->updateSizeText(Lcom/android/settings/applications/ManageApplicationsFragment;I)V

    .line 780
    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x80

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    .line 781
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setVisibility(I)V

    .line 782
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 783
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const v9, 0x7f0c0f83

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(I)V

    .line 791
    :goto_3
    iget v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 795
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v9}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "icon_indicator_connected"

    const v11, 0x7f020126

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setImageResource(I)V

    .line 800
    iget-object v9, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setVisibility(I)V

    .line 804
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v9}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setColorFilterEnabled(Landroid/content/Context;Z)V

    .line 810
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mIsAlignLastControl:Z
    invoke-static {v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    instance-of v8, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v8, :cond_5

    .line 811
    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 816
    :cond_5
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 818
    iget-object v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    return-object p2

    .line 772
    :cond_6
    :try_start_2
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v9, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 784
    :cond_7
    iget-object v8, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_8

    .line 785
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setVisibility(I)V

    .line 786
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 787
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const v9, 0x7f0c0f82

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(I)V

    goto :goto_3

    .line 789
    :cond_8
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->disabled:Lcom/htc/widget/HtcListItem2LineStamp;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineStamp;->setVisibility(I)V

    goto :goto_3

    .line 800
    :cond_9
    const/16 v8, 0x8

    goto :goto_4

    .line 814
    :cond_a
    iget-object v8, v3, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->checkBox:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 685
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    .line 688
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 830
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    .line 653
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 663
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;

    .line 665
    .local v0, holder:Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    iget-object v2, v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    iget-object v3, v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->updateSizeText(Lcom/android/settings/applications/ManageApplicationsFragment;I)V

    .line 668
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    iget-object v2, v0, Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

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

    .line 675
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    .line 681
    .end local v0           #holder:Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    :cond_1
    return-void

    .line 668
    .restart local v0       #holder:Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 663
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 637
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->getLoadingVisibility()I
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1000(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    const/16 v1, 0x8

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z

    .line 643
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWaitingForData:Z

    .line 644
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 645
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 647
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    .line 648
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 2
    .parameter "running"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    .line 630
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 633
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    .line 434
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 436
    :cond_0
    return-void
.end method

.method public rebuild(II)V
    .locals 2
    .parameter "filter"
    .parameter "sort"

    .prologue
    .line 439
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    if-ne p2, v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 445
    :cond_0
    sget-boolean v0, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 446
    sget-object v0, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v1, "rebuild list for cache"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    .line 451
    iput p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 452
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 11
    .parameter "eraseold"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 456
    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "Rebuilding app list..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v4

    .line 467
    .local v4, supportMove:Z
    if-nez v4, :cond_3

    .line 468
    iput v9, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    .line 475
    :goto_0
    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    packed-switch v6, :pswitch_data_0

    .line 492
    const/4 v2, 0x0

    .line 495
    .local v2, filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v6, :pswitch_data_1

    .line 510
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 513
    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v6, v2, v0}, Lcom/android/settings/applications/ApplicationsState;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 515
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 597
    :cond_2
    :goto_3
    return-void

    .line 470
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :cond_3
    iput v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 477
    :pswitch_0
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 478
    .restart local v2       #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 480
    .end local v2           #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 485
    .restart local v2       #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    if-ne v8, v4, :cond_1

    .line 486
    iput v10, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 497
    :pswitch_2
    iget v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWhichSize:I

    packed-switch v6, :pswitch_data_2

    .line 505
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 506
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 499
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 500
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 502
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 503
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 519
    .restart local v1       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_4
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 520
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 521
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 525
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 526
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    .line 528
    if-nez v1, :cond_6

    .line 529
    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mWaitingForData:Z

    .line 530
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z
    invoke-static {v6, v9}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z

    .line 533
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 535
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v5

    .line 536
    .local v5, uiHandler:Landroid/os/Handler;
    if-eqz v5, :cond_2

    .line 538
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v6, v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$302(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    .line 540
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6, v8}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    .line 541
    const/4 v6, 0x3

    iget v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    iget v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 544
    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 545
    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "entries is null, resend MSG_APPLICATIONSTATE_REBUILD to rebuild list"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 523
    .end local v5           #uiHandler:Landroid/os/Handler;
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 555
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$700(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v6

    if-ne v6, v8, :cond_7

    .line 556
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 559
    const-string v6, "Downloaded"

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 560
    const-string v6, "Response Time (Application manager (Apps))"

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->launchFinish(Ljava/lang/String;)V

    .line 570
    :cond_8
    :goto_5
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    const/16 v7, 0x8

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z
    invoke-static {v6, v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z

    .line 573
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 574
    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 575
    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "the showed data is cached"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v6, v9}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    .line 579
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v3

    .line 580
    .local v3, nonUiHandler:Landroid/os/Handler;
    if-eqz v3, :cond_b

    .line 581
    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 582
    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "send MSG_RESUME_ADAPTER to update cache data"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_a
    invoke-static {v3, v10, v8, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 592
    .end local v3           #nonUiHandler:Landroid/os/Handler;
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget-object v6, v6, Lcom/android/settings/applications/ManageApplicationsFragment;->mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v6, :cond_2

    .line 593
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iget-object v7, v7, Lcom/android/settings/applications/ManageApplicationsFragment;->mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 562
    :cond_c
    const-string v6, "All"

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 563
    const-string v6, "Response Time (Apps All tab)"

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    goto :goto_5

    .line 565
    :cond_d
    const-string v6, "OnSdCard"

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 566
    const-string v6, "Response Time (Apps On phone storage tab)"

    invoke-static {v6}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 495
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 497
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(II)V
    .locals 6
    .parameter "filter"
    .parameter "sort"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 379
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

    .line 380
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v1, :cond_4

    .line 383
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 385
    sget-boolean v1, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 386
    sget-object v1, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v2, "use cache to show data"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 391
    .local v0, uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_3

    .line 393
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z
    invoke-static {v1, v4}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$302(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    .line 395
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z
    invoke-static {v1, v4}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z

    .line 397
    invoke-static {v0, v5, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    sget-boolean v1, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 401
    sget-object v1, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v2, "send MSG_APPLICATIONSTATE_REBUILD to rebuild list"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_2
    :goto_0
    return-void

    .line 410
    .end local v0           #uiHandler:Landroid/os/Handler;
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mResumed:Z

    .line 413
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/ApplicationsState;->resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 414
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastFilterMode:I

    .line 415
    iput p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 417
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 418
    .restart local v0       #uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 419
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 423
    .end local v0           #uiHandler:Landroid/os/Handler;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 424
    .restart local v0       #uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 425
    invoke-static {v0, v5, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
