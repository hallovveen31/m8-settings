.class public abstract Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcAbsMutableListPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mClickedDialogEntryIndexField:Ljava/lang/reflect/Field;

.field private mEntryEnabledStates:[Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFirstBound:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->setClickedDialogEntryIndex(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)[Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getEntryEnabledStates()[Z

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onFirstBindItemView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private getEntryEnabledStates()[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mEntryEnabledStates:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mEntryEnabledStates:[Z

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getCustomEntryEnabledStates()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mEntryEnabledStates:[Z

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mEntryEnabledStates:[Z

    goto :goto_0
.end method

.method private onFirstBindItemView(Landroid/view/ViewGroup;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v4, 0x20200f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onCreateHeaderView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onCreateFooterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private setClickedDialogEntryIndex(I)V
    .locals 3

    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickedDialogEntryIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mClickedDialogEntryIndexField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    const-class v1, Lcom/htc/preference/HtcListPreference;

    const-string v2, "mClickedDialogEntryIndex"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mClickedDialogEntryIndexField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mClickedDialogEntryIndexField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mClickedDialogEntryIndexField:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getSubTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Impossible!"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract getCustomEntryEnabledStates()[Z
.end method

.method protected getCustomListItemLayoutId()I
    .locals 1

    const v0, 0x209001f

    return v0
.end method

.method protected final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mInflater:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method protected final getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onCreateListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    goto :goto_0
.end method

.method protected notifyDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getSubTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support notifyDataChanged()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n mListAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onBindListItemView(Landroid/widget/ListAdapter;ILandroid/view/View;)V
    .locals 2

    const v1, 0x1020014

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSingleText;

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateFooterView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateHeaderView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateListAdapter()Landroid/widget/ListAdapter;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->getCustomEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;-><init>(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z

    return-void
.end method

.method protected final onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$2;-><init>(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method protected setEntryEnabled(IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getEntryEnabledStates()[Z

    move-result-object v0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "valid range: [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_3

    aput-boolean p2, v0, p1

    sget-boolean v1, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEntryEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->notifyDataChanged()V

    :cond_3
    return-void
.end method
