.class public Lcom/android/settings/framework/reflect/HtcMethodReference;
.super Ljava/lang/Object;
.source "HtcMethodReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/reflect/HtcMethodReference$IAdvancedMethodProvider;,
        Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;
    }
.end annotation


# instance fields
.field private final mCacheMethod:Z

.field private mInit:Ljava/lang/Boolean;

.field private mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

.field private mSoftMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mStrongMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;)V
    .locals 1
    .parameter "methodProvider"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;Z)V
    .locals 2
    .parameter "methodProvider"
    .parameter "cacheMethod"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mInit:Ljava/lang/Boolean;

    .line 79
    iput-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mStrongMethod:Ljava/lang/reflect/Method;

    .line 82
    iput-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mSoftMethod:Ljava/lang/ref/SoftReference;

    .line 85
    iput-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'methodProvider\' should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    .line 113
    iput-boolean p2, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mCacheMethod:Z

    .line 114
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    invoke-interface {v0}, Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;->onGetMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "args"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mInit:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    invoke-interface {v1}, Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;->onGetMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    .local v0, method:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_3

    .line 133
    iget-boolean v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mCacheMethod:Z

    if-eqz v1, :cond_2

    .line 134
    iput-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mStrongMethod:Ljava/lang/reflect/Method;

    .line 138
    :goto_0
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mInit:Ljava/lang/Boolean;

    .line 144
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mInit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    iget-boolean v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mCacheMethod:Z

    if-eqz v1, :cond_4

    .line 148
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mStrongMethod:Ljava/lang/reflect/Method;

    .line 160
    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_3
    return-object v1

    .line 136
    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mSoftMethod:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 140
    :cond_3
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mInit:Ljava/lang/Boolean;

    goto :goto_1

    .line 150
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mSoftMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 153
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    invoke-interface {v1}, Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;->onGetMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mSoftMethod:Ljava/lang/ref/SoftReference;

    goto :goto_2

    .line 162
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    instance-of v1, v1, Lcom/android/settings/framework/reflect/HtcMethodReference$IAdvancedMethodProvider;

    if-eqz v1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcMethodReference;->mMethodProvider:Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;

    check-cast v1, Lcom/android/settings/framework/reflect/HtcMethodReference$IAdvancedMethodProvider;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/framework/reflect/HtcMethodReference$IAdvancedMethodProvider;->onNotFoundMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 166
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method
