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
    .parameter
    .parameter "tab"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    .line 256
    iput-object p2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    .line 257
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
    .locals 1
    .parameter "position"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 269
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 273
    if-nez p2, :cond_2

    .line 274
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 275
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040104

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 276
    new-instance v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V

    .line 277
    .local v1, holder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;
    const v3, 0x7f09023a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    #setter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1002(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;Lcom/htc/widget/HtcListItem2LineText;)Lcom/htc/widget/HtcListItem2LineText;

    .line 279
    const v3, 0x7f09023b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    #setter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1102(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;Lcom/htc/widget/HtcCheckBox;)Lcom/htc/widget/HtcCheckBox;

    .line 280
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    .line 285
    .local v0, certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v3

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$1200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 286
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mSubjectView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v3

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$1300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mCheckbox:Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$1400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v6

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 289
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;->access$1100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsAlignLastControl:Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 293
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 296
    :cond_1
    return-object p2

    .line 282
    .end local v0           #certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
    .end local v1           #holder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;

    .restart local v1       #holder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    .restart local v0       #certHolder:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
    :cond_3
    move v3, v5

    .line 288
    goto :goto_1
.end method
