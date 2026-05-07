<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Discografía</title>

                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 20px;
                    }

                    h1 {
                        text-align: center;
                        color: #222;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        background: white;
                    }

                    th, td {
                        border: 1px solid #ccc;
                        padding: 10px;
                        text-align: left;
                        vertical-align: top;
                    }

                    th {
                        background-color: #333;
                        color: white;
                    }

                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }

                    ul {
                        margin: 0;
                        padding-left: 18px;
                    }
                </style>
            </head>

            <body>
                <h1>Discografía - Canciones</h1>

                <table>
                    <tr>
                        <th>Título</th>
                        <th>Disco</th>
                        <th>Año</th>
                        <th>Discográfica</th>
                        <th>Posición</th>
                        <th>Duración</th>
                        <th>Integrantes</th>
                    </tr>

                    <xsl:for-each select="discografia/cancion">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>

                            <td>
                                <xsl:value-of select="disco/nombre"/>
                            </td>

                            <td>
                                <xsl:value-of select="disco/fecha_publicacion"/>
                            </td>

                            <td>
                                <xsl:value-of select="disco/discografica"/>
                            </td>

                            <td>
                                <xsl:value-of select="posicion_disco"/>
                            </td>

                            <td>
                                <xsl:value-of select="duracion"/> min
                            </td>

                            <td>
                                <ul>
                                    <xsl:for-each select="integrantes/integrante">
                                        <li>
                                            <strong>
                                                <xsl:value-of select="nombre"/>
                                            </strong>
                                            -
                                            <xsl:value-of select="rol"/>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>