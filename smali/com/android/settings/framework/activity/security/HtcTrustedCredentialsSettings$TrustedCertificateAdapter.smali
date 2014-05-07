.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
    }
.end annotation


# instance fields
.field private final mCertHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method private load()V
    .locals 2

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040104

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V

    const v3, 0x7f09023a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    #setter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1002(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;Lcom/htc/widget/HtcListItem2LineText;)Lcom/htc/widget/HtcListItem2LineText;

    const v3, 0x7f09023b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    #setter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1102(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;Lcom/htc/widget/HtcCheckBox;)Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v3

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$1200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v3

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$1300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mCheckbox:Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$1400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v6

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsAlignLastControl:Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method
