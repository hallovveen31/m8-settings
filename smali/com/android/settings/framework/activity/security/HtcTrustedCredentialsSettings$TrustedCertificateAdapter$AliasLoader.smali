.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
.super Landroid/os/AsyncTask;
.source "HtcTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field mList:Landroid/view/View;

.field final synthetic this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$1600(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1900(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$2000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    const/4 v11, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1900(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1900(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    invoke-static {v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$1600(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    const/16 v2, 0x8

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->setLoadingVisibility(I)Z
    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1800(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;I)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mContent:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1700(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcEmptyView;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1700(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$1600(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    move-result-object v1

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->setLoadingVisibility(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->access$1800(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;I)Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
