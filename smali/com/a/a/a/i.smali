.class public Lcom/a/a/a/i;
.super Ljava/lang/Object;
.source "ParserResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/i$a;,
        Lcom/a/a/a/i$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 17
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/a/a/a/i$b;

    invoke-direct {v2, p0}, Lcom/a/a/a/i$b;-><init>(Lcom/a/a/a/i;)V

    .line 22
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    iget-object v0, v2, Lcom/a/a/a/i$b;->a:Ljava/lang/String;

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/a/a/a/g;
    .locals 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/a/a/a/i$a;

    invoke-direct {v2, p0}, Lcom/a/a/a/i$a;-><init>(Lcom/a/a/a/i;)V

    .line 71
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iget-object v0, v2, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
