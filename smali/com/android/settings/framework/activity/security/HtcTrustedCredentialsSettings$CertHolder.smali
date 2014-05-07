.class Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "HtcTrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .parameter "store"
    .parameter "adapter"
    .parameter "tab"
    .parameter "alias"
    .parameter "x509Cert"

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 367
    iput-object p2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    .line 368
    iput-object p3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    .line 369
    iput-object p4, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 370
    iput-object p5, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 372
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    .line 374
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, cn:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, o:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, ou:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    iget-object v4, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$2200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z

    .line 398
    return-void

    .line 385
    :cond_0
    iput-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 386
    iput-object v2, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 390
    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 391
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 393
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 394
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 349
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, primary:I
    if-eqz v0, :cond_0

    .line 404
    .end local v0           #primary:I
    :goto_0
    return v0

    .restart local v0       #primary:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    check-cast p1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 407
    instance-of v1, p1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    .line 408
    const/4 v1, 0x0

    .line 411
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 410
    check-cast v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;

    .line 411
    .local v0, other:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
