.class public Lcom/android/settings/deviceinfo/MiscFilesHandler;
.super Lcom/android/settings/framework/app/InternalListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemorySettings"


# instance fields
.field private mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/InternalListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/InternalListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    const v1, 0x7f0c11dd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    const v1, 0x7f0c11de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    const v1, 0x7f0c11df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400e3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
