.class public Lcom/motorola/settingslib/InstalledAppUtils;
.super Ljava/lang/Object;
.source "InstalledAppUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sBlockNotificationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideNotifListenerPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideSensitiveContentPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNonDisablePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNonForceStopPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/motorola/settingslib/InstalledAppUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/settingslib/InstalledAppUtils;->TAG:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sNonDisablePkgs:Ljava/util/ArrayList;

    .line 47
    sput-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sNonForceStopPkgs:Ljava/util/ArrayList;

    .line 50
    sput-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sBlockNotificationPkgs:Ljava/util/ArrayList;

    .line 54
    sput-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sHideNotifListenerPkgs:Ljava/util/ArrayList;

    .line 58
    sput-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sHideSensitiveContentPkgs:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRestrictedPackagesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 63
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "dir":Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "appArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 67
    .local v8, "files":[Ljava/io/File;
    if-eqz v8, :cond_3

    array-length v10, v8

    if-lez v10, :cond_3

    .line 68
    array-length v10, v8

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v7, v8, v9

    .line 69
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_1

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "appListFileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v2    # "appListFileInputStream":Ljava/io/FileInputStream;
    .local v3, "appListFileInputStream":Ljava/io/FileInputStream;
    if-eqz v3, :cond_0

    .line 75
    :try_start_1
    invoke-static {v3}, Lcom/motorola/settingslib/InstalledAppUtils;->parse(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    .local v1, "appArrayListFromFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .end local v1    # "appArrayListFromFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    if-eqz v3, :cond_1

    .line 86
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .end local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 87
    .restart local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 79
    .end local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "appListFileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 80
    .end local v2    # "appListFileInputStream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    sget-object v11, Lcom/motorola/settingslib/InstalledAppUtils;->TAG:Ljava/lang/String;

    .line 81
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error occurred while loading app list file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 80
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    if-eqz v2, :cond_1

    .line 86
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 87
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 83
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    .line 84
    :goto_3
    if-eqz v2, :cond_2

    .line 86
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 83
    :cond_2
    :goto_4
    throw v9

    .line 87
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 95
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "files":[Ljava/io/File;
    :cond_3
    return-object v0

    .line 83
    .restart local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "files":[Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    .local v2, "appListFileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 79
    .end local v2    # "appListFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Throwable;
    move-object v2, v3

    .end local v3    # "appListFileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "appListFileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static isPackageRemoveBlockAll(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    sget-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sBlockNotificationPkgs:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 219
    const-string/jumbo v1, "/system/etc/blocknotifications/"

    invoke-static {v1}, Lcom/motorola/settingslib/InstalledAppUtils;->getRestrictedPackagesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sBlockNotificationPkgs:Ljava/util/ArrayList;

    .line 220
    const-string/jumbo v1, "/oem/etc/blocknotifications/"

    invoke-static {v1}, Lcom/motorola/settingslib/InstalledAppUtils;->getRestrictedPackagesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, "oem_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    sget-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sBlockNotificationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    .end local v0    # "oem_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/motorola/settingslib/InstalledAppUtils;->sBlockNotificationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 227
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "inputstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Invalid inputstream"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 102
    :cond_0
    const/4 v6, 0x0

    .line 104
    .local v6, "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 105
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 106
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 107
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 109
    .local v10, "root":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 110
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v7, "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .end local v6    # "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-result-object v1

    .line 113
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v8, v11, :cond_2

    .line 115
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 116
    .local v0, "childNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    :cond_2
    move-object v6, v7

    .line 135
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "root":Lorg/w3c/dom/Element;
    :cond_3
    :goto_2
    return-object v6

    .line 120
    .restart local v0    # "childNode":Lorg/w3c/dom/Node;
    .restart local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v10    # "root":Lorg/w3c/dom/Element;
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 121
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 123
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 122
    if-eqz v11, :cond_1

    .line 125
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 131
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "i":I
    .end local v9    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 132
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "root":Lorg/w3c/dom/Element;
    :goto_3
    sget-object v11, Lcom/motorola/settingslib/InstalledAppUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error occured while parsing inputstream"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 131
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "entry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method
