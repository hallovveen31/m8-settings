.class public Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;
.super Lcom/android/settings/applications/AppOpsDetails;
.source "HtcAppOpsDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$3;,
        Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;,
        Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;
    }
.end annotation


# static fields
.field private static ALLOW_INDEX:I = 0x0

.field private static ALWAYS_ASK_INDEX:I = 0x0

.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static DENY_INDEX:I

.field private static ERROR_INDEX:I

.field private static INDEX_SHIFT:I

.field private static final TAG:Ljava/lang/String;

.field private static TOTAL_INDEX:I


# instance fields
.field protected mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

.field private mListView:Lcom/htc/widget/HtcListView;

.field protected mOpListAdapter:Landroid/widget/ListAdapter;

.field private mOpModeTypeEntries:[Ljava/lang/String;

.field private mOpModeTypeValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportAlwaysAskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ERROR_INDEX:I

    sput v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALLOW_INDEX:I

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    rsub-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALWAYS_ASK_INDEX:I

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    rsub-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->DENY_INDEX:I

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    rsub-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TOTAL_INDEX:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Lcom/android/settings/applications/AppOpsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Lcom/android/settings/applications/AppOpsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    return-object v0
.end method

.method private convertIndexOfEntries(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    sput v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALLOW_INDEX:I

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    rsub-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALWAYS_ASK_INDEX:I

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    rsub-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->DENY_INDEX:I

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->INDEX_SHIFT:I

    rsub-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TOTAL_INDEX:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getIndexByOpModeType(Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$3;->$SwitchMap$com$android$settings$framework$core$security$permission$HtcPermissionManager$OpModeType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ERROR_INDEX:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALLOW_INDEX:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALWAYS_ASK_INDEX:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->DENY_INDEX:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getOpModeTypeByIndex(I)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;
    .locals 1

    if-ltz p1, :cond_0

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TOTAL_INDEX:I

    if-lt p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->UNKNOWN:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeValues:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeFromValue(I)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    move-result-object v0

    goto :goto_0
.end method

.method private getOpModeTypeValueByIndex(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getOpModeTypeByIndex(I)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v1

    return v1
.end method

.method private initEntries(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->convertIndexOfEntries(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->initOpModeTypeEntries(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->initOpModeTypeValues(Z)V

    return-void
.end method

.method private initOpAdapter(Lcom/android/settings/applications/AppOpsState$AppOpEntry;I)V
    .locals 7

    move v6, p2

    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04007d

    const v4, 0x1020014

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;Landroid/content/Context;II[Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method private initOpModeTypeEntries(Z)V
    .locals 4

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TOTAL_INDEX:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;

    sget v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALLOW_INDEX:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-static {v2, v3}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;

    sget v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALWAYS_ASK_INDEX:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-static {v2, v3}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;

    sget v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->DENY_INDEX:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-static {v2, v3}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method private initOpModeTypeValues(Z)V
    .locals 3

    sget v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TOTAL_INDEX:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeValues:[I

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeValues:[I

    sget v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALLOW_INDEX:I

    sget-object v2, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v2

    aput v2, v0, v1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeValues:[I

    sget v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALWAYS_ASK_INDEX:I

    sget-object v2, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeValues:[I

    sget v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->DENY_INDEX:I

    sget-object v2, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v2

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.settings.Settings$AppOpsSummaryActivity"

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0fb4

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;ILcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;II)V
    .locals 4

    if-ne p6, p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getOpModeTypeValueByIndex(I)I

    move-result v0

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onClick() - opMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-static {v1, v2, p3, v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->setAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$AppOpEntry;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p4, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeNameFromValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppOpsDetails;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f040052

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static {p2, v2, v2, v4}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f090041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v5, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    iget-object v5, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    const/4 v7, 0x1

    invoke-static {v5, v0, v6, v7}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;Z)I

    move-result v1

    invoke-static {v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportAlwaysAskModeByOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->initEntries(Z)V

    invoke-static {v1}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeFromValue(I)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getIndexByOpModeType(Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)I

    move-result v2

    sget v5, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ERROR_INDEX:I

    if-eq v2, v5, :cond_0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->initOpAdapter(Lcom/android/settings/applications/AppOpsState$AppOpEntry;I)V

    move v3, v2

    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpListAdapter:Landroid/widget/ListAdapter;

    new-instance v7, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;

    invoke-direct {v7, p0, v0, v4, v3}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;I)V

    invoke-virtual {v5, v6, v3, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    sget v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->ALLOW_INDEX:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/applications/AppOpsDetails;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method protected refreshUi()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/applications/AppOpsDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v13}, Landroid/widget/ArrayAdapter;->clear()V

    :cond_1
    sget-object v1, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    array-length v8, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v12, v1, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12, v14, v15}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v13, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v13}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    sget-boolean v13, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " This package doesn\'t have any Ops that can be showed. - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mListView:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_6
    sget-boolean v13, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    const-string v14, " refreshUi() :"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v13}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v13

    if-ge v5, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v13, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    sget v14, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_REAL_MODE:I

    or-int/2addr v14, v11

    sget v15, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_WITHOUT_HINT:I

    or-int/2addr v14, v15

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v9

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \t uid      - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \t Package  - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \t firstOp  - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", label="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v3, v15}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", summary="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v3, v15}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSummaryText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \t perm  - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \t switchOP - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \t mode     - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    const-string v14, " \t ----------------------- "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_7
    sget-object v13, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " This package have Ops count - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mList:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;

    invoke-virtual {v15}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
